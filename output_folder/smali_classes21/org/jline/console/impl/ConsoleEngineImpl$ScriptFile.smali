.class Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;
.super Ljava/lang/Object;
.source "ConsoleEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/impl/ConsoleEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScriptFile"
.end annotation


# instance fields
.field private args:[Ljava/lang/String;

.field private cmdLine:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private result:Ljava/lang/Object;

.field private script:Ljava/io/File;

.field final synthetic this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

.field private verbose:Z


# direct methods
.method public constructor <init>(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p2, "script"    # Ljava/io/File;
    .param p3, "cmdLine"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .line 401
    iput-object p1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const-string p1, ""

    iput-object p1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->extension:Ljava/lang/String;

    .line 402
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 405
    iput-object p2, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->script:Ljava/io/File;

    .line 406
    iput-object p3, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->cmdLine:Ljava/lang/String;

    .line 407
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->scriptExtension(Ljava/lang/String;)V

    .line 408
    invoke-direct {p0, p4}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->doArgs([Ljava/lang/String;)V

    .line 409
    return-void

    .line 403
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Script file not found!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "cmdLine"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .line 368
    const-string v0, "PATH"

    iput-object p1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const-string v1, ""

    iput-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->extension:Ljava/lang/String;

    .line 369
    invoke-static {p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$100(Lorg/jline/console/impl/ConsoleEngineImpl;)Lorg/jline/reader/Parser;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/jline/reader/Parser;->validCommandName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    return-void

    .line 373
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->script:Ljava/io/File;

    .line 374
    iput-object p3, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->cmdLine:Ljava/lang/String;

    .line 375
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    invoke-direct {p0, p2}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->scriptExtension(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 377
    :cond_1
    invoke-static {p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$200(Lorg/jline/console/impl/ConsoleEngineImpl;)Lorg/jline/console/ScriptEngine;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jline/console/ScriptEngine;->hasVariable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, "found":Z
    invoke-static {p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$200(Lorg/jline/console/impl/ConsoleEngineImpl;)Lorg/jline/console/ScriptEngine;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/jline/console/ScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 380
    .local v2, "p":Ljava/lang/String;
    invoke-static {p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$300(Lorg/jline/console/impl/ConsoleEngineImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 381
    .local v4, "e":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, "file":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v2, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    .line 383
    .local v6, "path":Ljava/nio/file/Path;
    invoke-interface {v6}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 384
    invoke-interface {v6}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->script:Ljava/io/File;

    .line 385
    invoke-direct {p0, p2}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->scriptExtension(Ljava/lang/String;)V

    .line 386
    const/4 v1, 0x1

    .line 387
    goto :goto_2

    .line 389
    .end local v4    # "e":Ljava/lang/String;
    .end local v5    # "file":Ljava/lang/String;
    .end local v6    # "path":Ljava/nio/file/Path;
    :cond_2
    goto :goto_1

    .line 390
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 391
    goto :goto_3

    .line 393
    .end local v2    # "p":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 395
    .end local v1    # "found":Z
    :cond_5
    :goto_3
    invoke-direct {p0, p4}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->doArgs([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    goto :goto_4

    .line 396
    :catch_0
    move-exception p1

    .line 399
    :goto_4
    return-void
.end method

.method static synthetic access$000(Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;

    .line 359
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->isScript()Z

    move-result v0

    return v0
.end method

.method private doArgs([Ljava/lang/String;)V
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v0, "_args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->isConsoleScript()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->script:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 425
    .local v4, "a":Ljava/lang/String;
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->isConsoleScript()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 426
    const-string v5, "-v"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 427
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 429
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->verbose:Z

    goto :goto_1

    .line 432
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    .end local v4    # "a":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->args:[Ljava/lang/String;

    .line 436
    return-void
.end method

.method private expandParameterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    .line 498
    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$600(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 500
    :cond_0
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$700(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    return-object p1

    .line 503
    :cond_1
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$800(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private internalExecute()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 507
    const-string v0, " "

    const-string v1, "\n"

    const-string v2, ""

    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->isEngineScript()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 508
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v0}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$200(Lorg/jline/console/impl/ConsoleEngineImpl;)Lorg/jline/console/ScriptEngine;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->script:Ljava/io/File;

    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/jline/console/impl/ConsoleEngineImpl;->expandParameters([Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jline/console/ScriptEngine;->execute(Ljava/io/File;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->result:Ljava/lang/Object;

    goto/16 :goto_6

    .line 509
    :cond_0
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->isConsoleScript()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 510
    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$902(Lorg/jline/console/impl/ConsoleEngineImpl;Z)Z

    .line 511
    const/4 v3, 0x1

    .line 512
    .local v3, "done":Z
    const-string v5, ""

    .line 513
    .local v5, "line":Ljava/lang/String;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    iget-object v8, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->script:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 514
    .local v6, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "l":Ljava/lang/String;
    const/4 v9, 0x0

    if-eqz v7, :cond_6

    .line 515
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v10, "#"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    goto/16 :goto_3

    .line 520
    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 521
    iget-object v7, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v7}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$100(Lorg/jline/console/impl/ConsoleEngineImpl;)Lorg/jline/reader/Parser;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v4

    sget-object v11, Lorg/jline/reader/Parser$ParseContext;->ACCEPT_LINE:Lorg/jline/reader/Parser$ParseContext;

    invoke-interface {v7, v5, v10, v11}, Lorg/jline/reader/Parser;->parse(Ljava/lang/String;ILorg/jline/reader/Parser$ParseContext;)Lorg/jline/reader/ParsedLine;

    .line 522
    const/4 v3, 0x1

    .line 523
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    iget-object v10, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->args:[Ljava/lang/String;

    array-length v11, v10

    if-ge v7, v11, :cond_2

    .line 524
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\\s\\$"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\\b"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->args:[Ljava/lang/String;

    aget-object v12, v12, v7

    .line 525
    invoke-direct {p0, v12}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->expandParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 524
    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 526
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\\$\\{"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(|:-.*)}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->args:[Ljava/lang/String;

    aget-object v11, v11, v7

    .line 527
    invoke-direct {p0, v11}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->expandParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 526
    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 523
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 529
    .end local v7    # "i":I
    :cond_2
    const-string v7, "\\$\\{@}"

    iget-object v11, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v11, v10}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$1000(Lorg/jline/console/impl/ConsoleEngineImpl;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 530
    const-string v7, "\\$@"

    iget-object v10, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    iget-object v11, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->args:[Ljava/lang/String;

    invoke-static {v10, v11}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$1000(Lorg/jline/console/impl/ConsoleEngineImpl;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 531
    const-string v7, "\\s\\$\\d\\b"

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 532
    const-string v7, "\\$\\{\\d+}"

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 533
    const-string v7, "\\$\\{\\d+:-(.*?)}"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 534
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 535
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->expandParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 537
    :cond_3
    iget-boolean v10, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->verbose:Z

    if-eqz v10, :cond_4

    .line 538
    new-instance v10, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v10}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 539
    .local v10, "asb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-static {}, Lorg/jline/builtins/Styles;->prntStyle()Lorg/jline/utils/StyleResolver;

    move-result-object v11

    const-string v12, ".vs"

    invoke-virtual {v11, v12}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Lorg/jline/utils/AttributedStringBuilder;->styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 540
    invoke-virtual {v10}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v11

    iget-object v12, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v12}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$1100(Lorg/jline/console/impl/ConsoleEngineImpl;)Lorg/jline/terminal/Terminal;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 541
    iget-object v11, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v11}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$1100(Lorg/jline/console/impl/ConsoleEngineImpl;)Lorg/jline/terminal/Terminal;

    move-result-object v11

    invoke-interface {v11}, Lorg/jline/terminal/Terminal;->flush()V

    .line 543
    .end local v10    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    :cond_4
    iget-object v10, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v10}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$1200(Lorg/jline/console/impl/ConsoleEngineImpl;)Lorg/jline/console/SystemRegistry;

    move-result-object v11

    invoke-interface {v11, v5}, Lorg/jline/console/SystemRegistry;->execute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/jline/console/impl/ConsoleEngineImpl;->println(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/jline/reader/EOFError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/jline/reader/SyntaxError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/jline/reader/EndOfFileException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    move-object v5, v2

    goto :goto_2

    .line 555
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v2, v9}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$902(Lorg/jline/console/impl/ConsoleEngineImpl;Z)Z

    .line 557
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "done":Z
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    throw v2

    .line 550
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "done":Z
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 551
    .local v0, "e":Lorg/jline/reader/EndOfFileException;
    const/4 v3, 0x1

    .line 552
    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v1}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$200(Lorg/jline/console/impl/ConsoleEngineImpl;)Lorg/jline/console/ScriptEngine;

    move-result-object v1

    const-string v2, "_return"

    invoke-interface {v1, v2}, Lorg/jline/console/ScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->result:Ljava/lang/Object;

    .line 553
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    iget-object v4, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->cmdLine:Ljava/lang/String;

    invoke-static {v2, v4, v1}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$1300(Lorg/jline/console/impl/ConsoleEngineImpl;Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/console/ConsoleEngine$ExecutionResult;

    .line 554
    goto :goto_4

    .line 548
    .end local v0    # "e":Lorg/jline/reader/EndOfFileException;
    :catch_2
    move-exception v0

    .line 549
    .local v0, "e":Lorg/jline/reader/SyntaxError;
    nop

    .end local v3    # "done":Z
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    throw v0

    .line 545
    .end local v0    # "e":Lorg/jline/reader/SyntaxError;
    .restart local v3    # "done":Z
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v7

    .line 546
    .local v7, "e":Lorg/jline/reader/EOFError;
    const/4 v3, 0x0

    .line 547
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 558
    .end local v7    # "e":Lorg/jline/reader/EOFError;
    :goto_2
    goto/16 :goto_0

    .line 516
    :cond_5
    :goto_3
    const/4 v3, 0x1

    .line 517
    goto/16 :goto_0

    .line 560
    .end local v8    # "l":Ljava/lang/String;
    :cond_6
    :goto_4
    if-eqz v3, :cond_7

    .line 564
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v0, v9}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$902(Lorg/jline/console/impl/ConsoleEngineImpl;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 565
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    goto :goto_6

    .line 561
    :cond_7
    :try_start_3
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v0, v9}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$902(Lorg/jline/console/impl/ConsoleEngineImpl;Z)Z

    .line 562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompleted command: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "done":Z
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 513
    .restart local v3    # "done":Z
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v0

    .line 567
    .end local v3    # "done":Z
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    :cond_8
    :goto_6
    return-void
.end method

.method private isConsoleScript()Z
    .locals 2

    .line 443
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v0}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$400(Lorg/jline/console/impl/ConsoleEngineImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEngineScript()Z
    .locals 2

    .line 439
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v0}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$200(Lorg/jline/console/impl/ConsoleEngineImpl;)Lorg/jline/console/ScriptEngine;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/console/ScriptEngine;->getExtensions()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->extension:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isScript()Z
    .locals 2

    .line 447
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v0}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$200(Lorg/jline/console/impl/ConsoleEngineImpl;)Lorg/jline/console/ScriptEngine;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/console/ScriptEngine;->getExtensions()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->extension:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->this$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v0}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$400(Lorg/jline/console/impl/ConsoleEngineImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private scriptExtension(Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->script:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "name":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->extension:Ljava/lang/String;

    .line 414
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->isEngineScript()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->isConsoleScript()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 415
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 417
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 451
    const-string v0, "\n"

    const-string v1, ""

    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->isScript()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 452
    return v3

    .line 454
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->result:Ljava/lang/Object;

    .line 455
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->args:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$500()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->args:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lorg/jline/console/impl/ConsoleEngineImpl;->access$500()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 492
    :cond_1
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->internalExecute()V

    goto/16 :goto_7

    .line 456
    :cond_2
    :goto_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->script:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 457
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 458
    .local v5, "size":I
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .local v6, "usage":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 460
    .local v7, "helpEnd":Z
    const/4 v8, 0x0

    .line 461
    .local v8, "headComment":Z
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .local v10, "l":Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 462
    add-int/lit8 v5, v5, 0x1

    .line 463
    const-string v9, "\\s+$"

    invoke-virtual {v10, v9, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    .end local v10    # "l":Ljava/lang/String;
    .local v9, "l":Ljava/lang/String;
    move-object v10, v9

    .line 465
    .local v10, "line":Ljava/lang/String;
    const/16 v11, 0x1e

    const-string v12, "END_HELP"

    if-gt v5, v11, :cond_b

    :try_start_1
    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_6

    .line 469
    :cond_3
    const/4 v11, 0x3

    if-nez v8, :cond_4

    if-ge v5, v11, :cond_a

    .line 470
    :cond_4
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 471
    .local v12, "ltr":Ljava/lang/String;
    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x2

    if-nez v13, :cond_8

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_3

    .line 474
    :cond_5
    const-string v13, "/*"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "//"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 475
    :cond_6
    const/4 v8, 0x1

    .line 476
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v14, :cond_7

    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_7
    move-object v11, v1

    :goto_2
    move-object v10, v11

    goto :goto_5

    .line 472
    :cond_8
    :goto_3
    const/4 v8, 0x1

    .line 473
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v4, :cond_9

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_9
    move-object v11, v1

    :goto_4
    move-object v10, v11

    .line 479
    .end local v12    # "ltr":Ljava/lang/String;
    :cond_a
    :goto_5
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    nop

    .end local v10    # "line":Ljava/lang/String;
    goto :goto_1

    .line 466
    .restart local v10    # "line":Ljava/lang/String;
    :cond_b
    :goto_6
    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    move v7, v1

    .line 481
    .end local v9    # "l":Ljava/lang/String;
    .end local v10    # "line":Ljava/lang/String;
    :cond_c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 482
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    if-nez v7, :cond_d

    .line 484
    invoke-virtual {v6, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_d
    new-instance v0, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    .end local v2    # "br":Ljava/io/BufferedReader;
    throw v0

    .line 488
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :cond_e
    invoke-direct {p0}, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->internalExecute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    .end local v5    # "size":I
    .end local v6    # "usage":Ljava/lang/StringBuilder;
    .end local v7    # "helpEnd":Z
    .end local v8    # "headComment":Z
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 456
    .end local v2    # "br":Ljava/io/BufferedReader;
    nop

    .line 494
    :goto_7
    return v4

    .line 456
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .line 570
    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :try_start_0
    const-string v1, "script:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->script:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    goto :goto_0

    .line 578
    :catch_0
    move-exception v1

    .line 579
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const-string v2, "extension:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->extension:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const-string v2, "cmdLine:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->cmdLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string v2, "args:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->args:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v2, "verbose:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->verbose:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string v1, "result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl$ScriptFile;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 591
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
