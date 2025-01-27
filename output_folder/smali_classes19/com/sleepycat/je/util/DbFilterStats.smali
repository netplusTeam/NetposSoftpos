.class public Lcom/sleepycat/je/util/DbFilterStats;
.super Ljava/lang/Object;
.source "DbFilterStats.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ","

.field private static final USAGE:Ljava/lang/String;


# instance fields
.field private fileColHeader:[Ljava/lang/String;

.field private header:Ljava/lang/String;

.field private final inputFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final projList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private projectionArg:Ljava/lang/String;

.field private projectionFile:Ljava/io/File;

.field private final rowBuf:Ljava/lang/StringBuffer;

.field private final tokenizer:Lcom/sleepycat/je/util/Splitter;

.field private final valMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/util/DbFilterStats;

    .line 46
    invoke-static {v1}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n      [-f <projection file>]     # use file for projection list\n      [-p \"<list of columns>\"]   # use specified projection list\n      <stat file> [<stat file>]  # list of statistic file names"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/util/DbFilterStats;->USAGE:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->projectionFile:Ljava/io/File;

    .line 54
    iput-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->projectionArg:Ljava/lang/String;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/util/DbFilterStats;->inputFiles:Ljava/util/List;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/util/DbFilterStats;->projList:Ljava/util/List;

    .line 59
    iput-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->header:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->fileColHeader:[Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->rowBuf:Ljava/lang/StringBuffer;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->valMap:Ljava/util/Map;

    .line 65
    new-instance v0, Lcom/sleepycat/je/util/Splitter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lcom/sleepycat/je/util/Splitter;-><init>(C)V

    iput-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->tokenizer:Lcom/sleepycat/je/util/Splitter;

    return-void
.end method

.method private addProjections(Ljava/lang/String;)V
    .locals 5
    .param p1, "collist"    # Ljava/lang/String;

    .line 334
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/util/DbFilterStats;->parseRow(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "names":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 336
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 337
    const-string v4, "Projection list contained a empty entry."

    invoke-direct {p0, v4}, Lcom/sleepycat/je/util/DbFilterStats;->printFatal(Ljava/lang/String;)V

    .line 339
    :cond_0
    iget-object v4, p0, Lcom/sleepycat/je/util/DbFilterStats;->projList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    :cond_1
    return-void
.end method

.method private formProjections(Ljava/io/File;)V
    .locals 4
    .param p1, "projFile"    # Ljava/io/File;

    .line 293
    const/4 v0, 0x0

    .line 296
    .local v0, "fr":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 297
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "row":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid projection file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 300
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-direct {p0, v2}, Lcom/sleepycat/je/util/DbFilterStats;->printFatal(Ljava/lang/String;)V

    .line 302
    :cond_0
    invoke-direct {p0, v1}, Lcom/sleepycat/je/util/DbFilterStats;->addProjections(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    nop

    .line 314
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    goto :goto_1

    .line 316
    :catch_0
    move-exception v2

    .line 318
    goto :goto_1

    .line 312
    .end local v1    # "row":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 307
    :catch_1
    move-exception v1

    .line 308
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occured accessing projection file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 310
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-direct {p0, v2}, Lcom/sleepycat/je/util/DbFilterStats;->printFatal(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 314
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 318
    :goto_0
    goto :goto_1

    .line 316
    :catch_2
    move-exception v1

    .line 318
    goto :goto_1

    .line 303
    :catch_3
    move-exception v1

    .line 304
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occured accessing projection file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 306
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-direct {p0, v2}, Lcom/sleepycat/je/util/DbFilterStats;->printFatal(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 312
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_1

    .line 314
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 321
    :cond_1
    :goto_1
    return-void

    .line 312
    :goto_2
    if-eqz v0, :cond_2

    .line 314
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 318
    goto :goto_3

    .line 316
    :catch_4
    move-exception v2

    .line 318
    :cond_2
    :goto_3
    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "argv"    # [Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/sleepycat/je/util/DbFilterStats;

    invoke-direct {v0}, Lcom/sleepycat/je/util/DbFilterStats;-><init>()V

    .line 86
    .local v0, "dbf":Lcom/sleepycat/je/util/DbFilterStats;
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/util/DbFilterStats;->execute([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 87
    .local v1, "retstatus":I
    :goto_0
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 88
    return-void
.end method

.method private outputRow(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 213
    .local p1, "cvals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->rowBuf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 215
    .local v1, "val":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/util/DbFilterStats;->rowBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/sleepycat/je/util/DbFilterStats;->rowBuf:Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/util/DbFilterStats;->rowBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    .end local v1    # "val":Ljava/lang/String;
    goto :goto_0

    .line 220
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/sleepycat/je/util/DbFilterStats;->rowBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 5
    .param p1, "argv"    # [Ljava/lang/String;

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "argc":I
    array-length v1, p1

    .line 227
    .local v1, "nArgs":I
    iget-object v2, p0, Lcom/sleepycat/je/util/DbFilterStats;->inputFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 229
    :goto_0
    if-ge v0, v1, :cond_4

    .line 230
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "argc":I
    .local v2, "argc":I
    aget-object v0, p1, v0

    .line 231
    .local v0, "thisArg":Ljava/lang/String;
    const-string v3, "-f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    if-ge v2, v1, :cond_0

    .line 233
    new-instance v3, Ljava/io/File;

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "argc":I
    .local v4, "argc":I
    aget-object v2, p1, v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sleepycat/je/util/DbFilterStats;->projectionFile:Ljava/io/File;

    move v0, v4

    goto :goto_2

    .line 235
    .end local v4    # "argc":I
    .restart local v2    # "argc":I
    :cond_0
    const-string v3, "-f requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/util/DbFilterStats;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 237
    :cond_1
    const-string v3, "-p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 238
    if-ge v2, v1, :cond_2

    .line 239
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .local v3, "argc":I
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sleepycat/je/util/DbFilterStats;->projectionArg:Ljava/lang/String;

    move v0, v3

    goto :goto_2

    .line 241
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_2
    const-string v3, "-p requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/util/DbFilterStats;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 244
    :cond_3
    iget-object v3, p0, Lcom/sleepycat/je/util/DbFilterStats;->inputFiles:Ljava/util/List;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v0    # "thisArg":Ljava/lang/String;
    :goto_1
    move v0, v2

    .end local v2    # "argc":I
    .local v0, "argc":I
    :goto_2
    goto :goto_0

    .line 247
    :cond_4
    return-void
.end method

.method private parseRow(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 3
    .param p1, "row"    # Ljava/lang/String;
    .param p2, "trimIt"    # Z

    .line 324
    iget-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->tokenizer:Lcom/sleepycat/je/util/Splitter;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/util/Splitter;->tokenize(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "vals":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 326
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 327
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private printFatal(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 352
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private printUsage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 344
    if-eqz p1, :cond_0

    .line 345
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v1, Lcom/sleepycat/je/util/DbFilterStats;->USAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processFile(Ljava/io/File;)V
    .locals 12
    .param p1, "statFile"    # Ljava/io/File;

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "fr":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 135
    .local v1, "outProj":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    .line 136
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "row":Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 137
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lcom/sleepycat/je/util/DbFilterStats;->parseRow(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "cols":[Ljava/lang/String;
    if-nez v1, :cond_7

    .line 140
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 141
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v5, "colNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v6, v4

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v4, v7

    .line 144
    .local v8, "cname":Ljava/lang/String;
    invoke-interface {v5, v8, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    nop

    .end local v8    # "cname":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 147
    :cond_0
    iget-object v6, p0, Lcom/sleepycat/je/util/DbFilterStats;->projList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 148
    .local v7, "projName":Ljava/lang/String;
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 149
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 151
    :cond_1
    array-length v8, v4

    move v9, v2

    :goto_3
    if-ge v9, v8, :cond_3

    aget-object v10, v4, v9

    .line 152
    .local v10, "colName":Ljava/lang/String;
    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 153
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v10    # "colName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 157
    .end local v7    # "projName":Ljava/lang/String;
    :cond_3
    :goto_4
    goto :goto_2

    .line 159
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/util/DbFilterStats;->header:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 161
    :cond_5
    invoke-direct {p0, v1}, Lcom/sleepycat/je/util/DbFilterStats;->outputRow(Ljava/util/List;)V

    .line 162
    iput-object v3, p0, Lcom/sleepycat/je/util/DbFilterStats;->header:Ljava/lang/String;

    .line 163
    iput-object v4, p0, Lcom/sleepycat/je/util/DbFilterStats;->fileColHeader:[Ljava/lang/String;

    .line 165
    .end local v5    # "colNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    goto/16 :goto_8

    .line 166
    :cond_7
    array-length v5, v4

    iget-object v6, p0, Lcom/sleepycat/je/util/DbFilterStats;->fileColHeader:[Ljava/lang/String;

    array-length v6, v6

    if-eq v5, v6, :cond_8

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid stat file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 168
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " header/columns are not equal."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-direct {p0, v5}, Lcom/sleepycat/je/util/DbFilterStats;->printFatal(Ljava/lang/String;)V

    .line 172
    :cond_8
    iget-object v5, p0, Lcom/sleepycat/je/util/DbFilterStats;->valMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 173
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    array-length v6, v4

    if-ge v5, v6, :cond_9

    .line 174
    iget-object v6, p0, Lcom/sleepycat/je/util/DbFilterStats;->valMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/sleepycat/je/util/DbFilterStats;->fileColHeader:[Ljava/lang/String;

    aget-object v7, v7, v5

    aget-object v8, v4, v5

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 177
    .end local v5    # "i":I
    :cond_9
    iget-object v5, p0, Lcom/sleepycat/je/util/DbFilterStats;->rowBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 178
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 179
    .local v5, "pname":Ljava/lang/String;
    iget-object v6, p0, Lcom/sleepycat/je/util/DbFilterStats;->rowBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-eqz v6, :cond_a

    .line 180
    iget-object v6, p0, Lcom/sleepycat/je/util/DbFilterStats;->rowBuf:Ljava/lang/StringBuffer;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    :cond_a
    iget-object v6, p0, Lcom/sleepycat/je/util/DbFilterStats;->valMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 183
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_b

    .line 184
    iget-object v7, p0, Lcom/sleepycat/je/util/DbFilterStats;->rowBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 186
    :cond_b
    iget-object v7, p0, Lcom/sleepycat/je/util/DbFilterStats;->rowBuf:Ljava/lang/StringBuffer;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    .end local v5    # "pname":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :goto_7
    goto :goto_6

    .line 189
    :cond_c
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v5, p0, Lcom/sleepycat/je/util/DbFilterStats;->rowBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v4    # "cols":[Ljava/lang/String;
    :goto_8
    goto/16 :goto_0

    .line 201
    :cond_d
    nop

    .line 203
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    goto :goto_a

    .line 205
    :catch_0
    move-exception v2

    .line 207
    goto :goto_a

    .line 201
    .end local v3    # "row":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_b

    .line 196
    :catch_1
    move-exception v2

    .line 197
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured accessing stat file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 199
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-direct {p0, v3}, Lcom/sleepycat/je/util/DbFilterStats;->printFatal(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_e

    .line 203
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 207
    :goto_9
    goto :goto_a

    .line 205
    :catch_2
    move-exception v2

    .line 207
    goto :goto_a

    .line 192
    :catch_3
    move-exception v2

    .line 193
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occured accessing stat file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 195
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-direct {p0, v3}, Lcom/sleepycat/je/util/DbFilterStats;->printFatal(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_e

    .line 203
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_9

    .line 210
    :cond_e
    :goto_a
    return-void

    .line 201
    :goto_b
    if-eqz v0, :cond_f

    .line 203
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 207
    goto :goto_c

    .line 205
    :catch_4
    move-exception v3

    .line 207
    :cond_f
    :goto_c
    throw v2
.end method

.method private processFiles()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->inputFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 117
    .local v1, "f":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/sleepycat/je/util/DbFilterStats;->processFile(Ljava/io/File;)V

    .line 118
    .end local v1    # "f":Ljava/io/File;
    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method private validateParams()V
    .locals 7

    .line 250
    iget-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->projList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    iget-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->inputFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 252
    const-string v0, "requires statistic file argument"

    invoke-direct {p0, v0}, Lcom/sleepycat/je/util/DbFilterStats;->printUsage(Ljava/lang/String;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->inputFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " is not a file."

    const-string v3, " does not exist."

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 256
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "Specified stat file "

    if-nez v4, :cond_1

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sleepycat/je/util/DbFilterStats;->printFatal(Ljava/lang/String;)V

    .line 260
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sleepycat/je/util/DbFilterStats;->printFatal(Ljava/lang/String;)V

    .line 264
    .end local v1    # "f":Ljava/io/File;
    :cond_2
    goto :goto_0

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->projectionFile:Ljava/io/File;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->projectionArg:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 267
    const-string v0, "requires either -p or -f argument"

    invoke-direct {p0, v0}, Lcom/sleepycat/je/util/DbFilterStats;->printUsage(Ljava/lang/String;)V

    .line 271
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->projectionArg:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 272
    invoke-direct {p0, v0}, Lcom/sleepycat/je/util/DbFilterStats;->addProjections(Ljava/lang/String;)V

    .line 276
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->projectionFile:Ljava/io/File;

    if-eqz v0, :cond_8

    .line 277
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "Specified projection file "

    if-nez v0, :cond_6

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/sleepycat/je/util/DbFilterStats;->projectionFile:Ljava/io/File;

    .line 279
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-direct {p0, v0}, Lcom/sleepycat/je/util/DbFilterStats;->printFatal(Ljava/lang/String;)V

    .line 282
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->projectionFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/util/DbFilterStats;->projectionFile:Ljava/io/File;

    .line 284
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-direct {p0, v0}, Lcom/sleepycat/je/util/DbFilterStats;->printFatal(Ljava/lang/String;)V

    .line 287
    :cond_7
    iget-object v0, p0, Lcom/sleepycat/je/util/DbFilterStats;->projectionFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/util/DbFilterStats;->formProjections(Ljava/io/File;)V

    .line 289
    :cond_8
    return-void
.end method


# virtual methods
.method public execute([Ljava/lang/String;)Z
    .locals 3
    .param p1, "argv"    # [Ljava/lang/String;

    .line 97
    const/4 v0, 0x1

    .line 99
    .local v0, "retcode":Z
    array-length v1, p1

    if-nez v1, :cond_0

    .line 100
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v2, Lcom/sleepycat/je/util/DbFilterStats;->USAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    return v0

    .line 105
    :cond_0
    :try_start_0
    new-instance v1, Lcom/sleepycat/je/util/DbFilterStats;

    invoke-direct {v1}, Lcom/sleepycat/je/util/DbFilterStats;-><init>()V

    .line 106
    .local v1, "dbf":Lcom/sleepycat/je/util/DbFilterStats;
    invoke-direct {v1, p1}, Lcom/sleepycat/je/util/DbFilterStats;->parseArgs([Ljava/lang/String;)V

    .line 107
    invoke-direct {v1}, Lcom/sleepycat/je/util/DbFilterStats;->validateParams()V

    .line 108
    invoke-direct {v1}, Lcom/sleepycat/je/util/DbFilterStats;->processFiles()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1    # "dbf":Lcom/sleepycat/je/util/DbFilterStats;
    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    .line 112
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return v0
.end method
