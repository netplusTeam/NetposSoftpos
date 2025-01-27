.class Lorg/jline/builtins/Commands$ReExecute;
.super Ljava/lang/Object;
.source "Commands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Commands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReExecute"
.end annotation


# instance fields
.field private argId:I

.field private cmdFile:Ljava/io/File;

.field private cmdWriter:Ljava/io/FileWriter;

.field private final edit:Z

.field private final execute:Z

.field private newParam:Ljava/lang/String;

.field private oldParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jline/reader/History;Lorg/jline/builtins/Options;)V
    .locals 6
    .param p1, "history"    # Lorg/jline/reader/History;
    .param p2, "opt"    # Lorg/jline/builtins/Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/builtins/Commands$ReExecute;->argId:I

    .line 326
    const-string v1, "e"

    invoke-virtual {p2, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string v2, "s"

    invoke-virtual {p2, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lorg/jline/builtins/Commands$ReExecute;->execute:Z

    .line 327
    invoke-virtual {p2, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/jline/builtins/Commands$ReExecute;->edit:Z

    .line 328
    if-eqz v2, :cond_4

    .line 329
    invoke-interface {p1}, Lorg/jline/reader/History;->last()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/jline/reader/History;->reverseIterator(I)Ljava/util/Iterator;

    move-result-object v2

    .line 330
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jline/reader/History$Entry;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 331
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 334
    :cond_2
    if-eqz v1, :cond_3

    .line 335
    const/4 v0, 0x0

    const-string v1, "jline-history-"

    invoke-static {v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/Commands$ReExecute;->cmdFile:Ljava/io/File;

    .line 336
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lorg/jline/builtins/Commands$ReExecute;->cmdFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/jline/builtins/Commands$ReExecute;->cmdWriter:Ljava/io/FileWriter;

    goto :goto_2

    .line 337
    :cond_3
    invoke-virtual {p2}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 338
    invoke-virtual {p2}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lorg/jline/builtins/Commands$ReExecute;->argId:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "s":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 340
    iget v4, p0, Lorg/jline/builtins/Commands$ReExecute;->argId:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/jline/builtins/Commands$ReExecute;->argId:I

    .line 341
    aget-object v0, v1, v0

    iput-object v0, p0, Lorg/jline/builtins/Commands$ReExecute;->oldParam:Ljava/lang/String;

    .line 342
    aget-object v0, v1, v3

    iput-object v0, p0, Lorg/jline/builtins/Commands$ReExecute;->newParam:Ljava/lang/String;

    .line 346
    .end local v1    # "s":[Ljava/lang/String;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jline/reader/History$Entry;>;"
    :cond_4
    :goto_2
    return-void
.end method

.method private replaceParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .line 369
    move-object v0, p1

    .line 370
    .local v0, "out":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/builtins/Commands$ReExecute;->oldParam:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/jline/builtins/Commands$ReExecute;->newParam:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 371
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addCommandInBuffer(Lorg/jline/reader/LineReader;Ljava/lang/String;)V
    .locals 3
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p2, "command"    # Ljava/lang/String;

    .line 365
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/jline/builtins/Commands$ReExecute;->replaceParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jline/reader/LineReader;->addCommandsInBuffer(Ljava/util/Collection;)V

    .line 366
    return-void
.end method

.method public addCommandInFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lorg/jline/builtins/Commands$ReExecute;->cmdWriter:Ljava/io/FileWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public editCommandsAndClose(Lorg/jline/reader/LineReader;)V
    .locals 2
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 377
    iget-boolean v0, p0, Lorg/jline/builtins/Commands$ReExecute;->edit:Z

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lorg/jline/builtins/Commands$ReExecute;->cmdWriter:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 380
    :try_start_0
    iget-object v0, p0, Lorg/jline/builtins/Commands$ReExecute;->cmdFile:Ljava/io/File;

    invoke-interface {p1, v0}, Lorg/jline/reader/LineReader;->editAndAddInBuffer(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    iget-object v0, p0, Lorg/jline/builtins/Commands$ReExecute;->cmdFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 383
    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jline/builtins/Commands$ReExecute;->cmdFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 383
    throw v0

    .line 385
    :cond_0
    :goto_0
    return-void
.end method

.method public getArgId()I
    .locals 1

    .line 349
    iget v0, p0, Lorg/jline/builtins/Commands$ReExecute;->argId:I

    return v0
.end method

.method public isEdit()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lorg/jline/builtins/Commands$ReExecute;->edit:Z

    return v0
.end method

.method public isExecute()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Lorg/jline/builtins/Commands$ReExecute;->execute:Z

    return v0
.end method
