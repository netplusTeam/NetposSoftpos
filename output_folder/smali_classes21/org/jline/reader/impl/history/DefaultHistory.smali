.class public Lorg/jline/reader/impl/history/DefaultHistory;
.super Ljava/lang/Object;
.source "DefaultHistory.java"

# interfaces
.implements Lorg/jline/reader/History;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;,
        Lorg/jline/reader/impl/history/DefaultHistory$EntryImpl;
    }
.end annotation


# static fields
.field public static final DEFAULT_HISTORY_FILE_SIZE:I = 0x2710

.field public static final DEFAULT_HISTORY_SIZE:I = 0x1f4


# instance fields
.field private historyFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private final items:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/jline/reader/History$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private offset:I

.field private reader:Lorg/jline/reader/LineReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->historyFiles:Ljava/util/Map;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->offset:I

    .line 42
    iput v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/jline/reader/LineReader;)V
    .locals 1
    .param p1, "reader"    # Lorg/jline/reader/LineReader;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->historyFiles:Ljava/util/Map;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->offset:I

    .line 42
    iput v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    .line 48
    invoke-virtual {p0, p1}, Lorg/jline/reader/impl/history/DefaultHistory;->attach(Lorg/jline/reader/LineReader;)V

    .line 49
    return-void
.end method

.method private doHistoryFileDataKey(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 121
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static doTrimHistory(Ljava/util/List;I)V
    .locals 6
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/History$Entry;",
            ">;I)V"
        }
    .end annotation

    .line 304
    .local p0, "allItems":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/History$Entry;>;"
    const/4 v0, 0x0

    .line 305
    .local v0, "idx":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 306
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 307
    .local v1, "ridx":I
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/reader/History$Entry;

    invoke-interface {v2}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "line":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 309
    .local v3, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/jline/reader/History$Entry;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 310
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/reader/History$Entry;

    invoke-interface {v4}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "l":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 312
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 314
    .end local v4    # "l":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 315
    :cond_1
    nop

    .end local v1    # "ridx":I
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/jline/reader/History$Entry;>;"
    add-int/lit8 v0, v0, 0x1

    .line 316
    goto :goto_0

    .line 317
    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 318
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 320
    :cond_3
    return-void
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 585
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 586
    .local v2, "ch":C
    const/16 v3, 0x5c

    sparse-switch v2, :sswitch_data_0

    .line 600
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 596
    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 598
    goto :goto_1

    .line 592
    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 593
    const/16 v3, 0x72

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 594
    goto :goto_1

    .line 588
    :sswitch_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 589
    const/16 v3, 0x6e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 590
    nop

    .line 584
    .end local v2    # "ch":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private format(Lorg/jline/reader/History$Entry;)Ljava/lang/String;
    .locals 4
    .param p1, "entry"    # Lorg/jline/reader/History$Entry;

    .line 343
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->reader:Lorg/jline/reader/LineReader;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->HISTORY_TIMESTAMPED:Lorg/jline/reader/LineReader$Option;

    invoke-interface {v0, v1}, Lorg/jline/reader/LineReader;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    const-string v1, "\n"

    if-eqz v0, :cond_0

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/jline/reader/History$Entry;->time()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jline/reader/impl/history/DefaultHistory;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jline/reader/impl/history/DefaultHistory;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEntriesInFile(Ljava/nio/file/Path;)I
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 165
    invoke-direct {p0, p1}, Lorg/jline/reader/impl/history/DefaultHistory;->getHistoryFileData(Ljava/nio/file/Path;)Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->getEntriesInFile()I

    move-result v0

    return v0
.end method

.method private getHistoryFileData(Ljava/nio/file/Path;)Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 125
    invoke-direct {p0, p1}, Lorg/jline/reader/impl/history/DefaultHistory;->doHistoryFileDataKey(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->historyFiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->historyFiles:Ljava/util/Map;

    new-instance v2, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;

    invoke-direct {v2, p0}, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;-><init>(Lorg/jline/reader/impl/history/DefaultHistory;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    iget-object v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->historyFiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;

    return-object v1
.end method

.method private getLastLoaded(Ljava/nio/file/Path;)I
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 161
    invoke-direct {p0, p1}, Lorg/jline/reader/impl/history/DefaultHistory;->getHistoryFileData(Ljava/nio/file/Path;)Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->getLastLoaded()I

    move-result v0

    return v0
.end method

.method private getPath()Ljava/nio/file/Path;
    .locals 3

    .line 52
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->reader:Lorg/jline/reader/LineReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getVariables()Ljava/util/Map;

    move-result-object v0

    const-string v2, "history-file"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 53
    .local v0, "obj":Ljava/lang/Object;
    :goto_0
    instance-of v2, v0, Ljava/nio/file/Path;

    if-eqz v2, :cond_1

    .line 54
    move-object v1, v0

    check-cast v1, Ljava/nio/file/Path;

    return-object v1

    .line 55
    :cond_1
    instance-of v2, v0, Ljava/io/File;

    if-eqz v2, :cond_2

    .line 56
    move-object v1, v0

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    return-object v1

    .line 57
    :cond_2
    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    return-object v1

    .line 60
    :cond_3
    return-object v1
.end method

.method private incEntriesInFile(Ljava/nio/file/Path;I)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "amount"    # I

    .line 157
    invoke-direct {p0, p1}, Lorg/jline/reader/impl/history/DefaultHistory;->getHistoryFileData(Ljava/nio/file/Path;)Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->incEntriesInFile(I)V

    .line 158
    return-void
.end method

.method private internalClear()V
    .locals 1

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->offset:I

    .line 298
    iput v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->historyFiles:Ljava/util/Map;

    .line 300
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 301
    return-void
.end method

.method private internalWrite(Ljava/nio/file/Path;I)V
    .locals 7
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    if-eqz p1, :cond_5

    .line 228
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Saving history to: "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lorg/jline/utils/Log;->trace([Ljava/lang/Object;)V

    .line 229
    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    .line 230
    .local v1, "parent":Ljava/nio/file/Path;
    new-array v4, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    new-array v4, v3, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v4}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 234
    :cond_0
    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/nio/file/OpenOption;

    sget-object v6, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v6, v5, v3

    sget-object v3, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v5, v2

    sget-object v2, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v0

    .line 236
    .local v0, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    iget-object v2, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, p2, v3}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/reader/History$Entry;

    .line 237
    .local v3, "entry":Lorg/jline/reader/History$Entry;
    invoke-virtual {p0, v3}, Lorg/jline/reader/impl/history/DefaultHistory;->isPersistable(Lorg/jline/reader/History$Entry;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 238
    invoke-direct {p0, v3}, Lorg/jline/reader/impl/history/DefaultHistory;->format(Lorg/jline/reader/History$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .end local v3    # "entry":Lorg/jline/reader/History$Entry;
    :cond_1
    goto :goto_0

    .line 241
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 242
    .end local v0    # "writer":Ljava/io/BufferedWriter;
    :cond_3
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-direct {p0, p1, v0}, Lorg/jline/reader/impl/history/DefaultHistory;->incEntriesInFile(Ljava/nio/file/Path;I)V

    .line 243
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->reader:Lorg/jline/reader/LineReader;

    const/16 v2, 0x2710

    const-string v3, "history-file-size"

    invoke-static {v0, v3, v2}, Lorg/jline/reader/impl/ReaderUtils;->getInt(Lorg/jline/reader/LineReader;Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, "max":I
    invoke-direct {p0, p1}, Lorg/jline/reader/impl/history/DefaultHistory;->getEntriesInFile(Ljava/nio/file/Path;)I

    move-result v2

    div-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v0

    if-le v2, v3, :cond_5

    .line 245
    invoke-virtual {p0, p1, v0}, Lorg/jline/reader/impl/history/DefaultHistory;->trimHistory(Ljava/nio/file/Path;I)V

    goto :goto_2

    .line 234
    .local v0, "writer":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2

    .line 248
    .end local v0    # "writer":Ljava/io/BufferedWriter;
    .end local v1    # "parent":Ljava/nio/file/Path;
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/jline/reader/impl/history/DefaultHistory;->setLastLoaded(Ljava/nio/file/Path;I)V

    .line 249
    return-void
.end method

.method private isLineReaderHistory(Ljava/nio/file/Path;)Z
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 138
    .local v0, "lrp":Ljava/nio/file/Path;
    if-nez v0, :cond_1

    .line 139
    if-eqz p1, :cond_0

    .line 140
    const/4 v1, 0x0

    return v1

    .line 142
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 145
    :cond_1
    invoke-static {v0, p1}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v1

    return v1
.end method

.method private maybeResize()V
    .locals 4

    .line 429
    :goto_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->size()I

    move-result v0

    iget-object v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->reader:Lorg/jline/reader/LineReader;

    const/16 v2, 0x1f4

    const-string v3, "history-size"

    invoke-static {v1, v3, v2}, Lorg/jline/reader/impl/ReaderUtils;->getInt(Lorg/jline/reader/LineReader;Ljava/lang/String;I)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 430
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->historyFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;

    .line 432
    .local v1, "hfd":Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;
    invoke-virtual {v1}, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->decLastLoaded()V

    .line 433
    .end local v1    # "hfd":Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;
    goto :goto_1

    .line 434
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->offset:I

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->size()I

    move-result v0

    iput v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    .line 437
    return-void
.end method

.method private setEntriesInFile(Ljava/nio/file/Path;I)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "entriesInFile"    # I

    .line 153
    invoke-direct {p0, p1}, Lorg/jline/reader/impl/history/DefaultHistory;->getHistoryFileData(Ljava/nio/file/Path;)Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->setEntriesInFile(I)V

    .line 154
    return-void
.end method

.method private setHistoryFileData(Ljava/nio/file/Path;Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;)V
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "historyFileData"    # Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;

    .line 133
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->historyFiles:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/jline/reader/impl/history/DefaultHistory;->doHistoryFileDataKey(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method private setLastLoaded(Ljava/nio/file/Path;I)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "lastloaded"    # I

    .line 149
    invoke-direct {p0, p1}, Lorg/jline/reader/impl/history/DefaultHistory;->getHistoryFileData(Ljava/nio/file/Path;)Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->setLastLoaded(I)V

    .line 150
    return-void
.end method

.method static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 610
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 611
    .local v2, "ch":C
    packed-switch v2, :pswitch_data_0

    .line 623
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 613
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 614
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_0

    .line 615
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 616
    :cond_0
    const/16 v3, 0x72

    if-ne v2, v3, :cond_1

    .line 617
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 619
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    nop

    .line 609
    .end local v2    # "ch":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public add(Ljava/time/Instant;Ljava/lang/String;)V
    .locals 4
    .param p1, "time"    # Ljava/time/Instant;
    .param p2, "line"    # Ljava/lang/String;

    .line 359
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->reader:Lorg/jline/reader/LineReader;

    const-string v1, "disable-history"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/jline/reader/impl/ReaderUtils;->getBoolean(Lorg/jline/reader/LineReader;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->reader:Lorg/jline/reader/LineReader;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->HISTORY_IGNORE_SPACE:Lorg/jline/reader/LineReader$Option;

    invoke-static {v0, v1}, Lorg/jline/reader/impl/ReaderUtils;->isSet(Lorg/jline/reader/LineReader;Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->reader:Lorg/jline/reader/LineReader;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->HISTORY_REDUCE_BLANKS:Lorg/jline/reader/LineReader$Option;

    invoke-static {v0, v1}, Lorg/jline/reader/impl/ReaderUtils;->isSet(Lorg/jline/reader/LineReader;Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 371
    :cond_2
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->reader:Lorg/jline/reader/LineReader;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->HISTORY_IGNORE_DUPS:Lorg/jline/reader/LineReader$Option;

    invoke-static {v0, v1}, Lorg/jline/reader/impl/ReaderUtils;->isSet(Lorg/jline/reader/LineReader;Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/History$Entry;

    invoke-interface {v0}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    return-void

    .line 376
    :cond_3
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->reader:Lorg/jline/reader/LineReader;

    const-string v1, "history-ignore"

    const-string v3, ""

    invoke-static {v0, v1, v3}, Lorg/jline/reader/impl/ReaderUtils;->getString(Lorg/jline/reader/LineReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/jline/reader/impl/history/DefaultHistory;->matchPatterns(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 377
    return-void

    .line 379
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/jline/reader/impl/history/DefaultHistory;->internalAdd(Ljava/time/Instant;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->reader:Lorg/jline/reader/LineReader;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->HISTORY_INCREMENTAL:Lorg/jline/reader/LineReader$Option;

    invoke-static {v0, v1}, Lorg/jline/reader/impl/ReaderUtils;->isSet(Lorg/jline/reader/LineReader;Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 382
    :try_start_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->save()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Failed to save history"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lorg/jline/utils/Log;->warn([Ljava/lang/Object;)V

    .line 388
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    :goto_0
    return-void
.end method

.method protected addHistoryLine(Ljava/nio/file/Path;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "line"    # Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jline/reader/impl/history/DefaultHistory;->addHistoryLine(Ljava/nio/file/Path;Ljava/lang/String;Z)V

    .line 170
    return-void
.end method

.method protected addHistoryLine(Ljava/nio/file/Path;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "checkDuplicates"    # Z

    .line 173
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->reader:Lorg/jline/reader/LineReader;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->HISTORY_TIMESTAMPED:Lorg/jline/reader/LineReader$Option;

    invoke-interface {v0, v1}, Lorg/jline/reader/LineReader;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 175
    .local v0, "idx":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad history file syntax! The history file `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "` may be an older history: please remove it or use a different history file."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "badHistoryFileSyntax":Ljava/lang/String;
    if-ltz v0, :cond_0

    .line 183
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .local v2, "time":Ljava/time/Instant;
    nop

    .line 188
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jline/reader/impl/history/DefaultHistory;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "unescaped":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, p3}, Lorg/jline/reader/impl/history/DefaultHistory;->internalAdd(Ljava/time/Instant;Ljava/lang/String;Z)V

    .line 190
    .end local v0    # "idx":I
    .end local v1    # "badHistoryFileSyntax":Ljava/lang/String;
    .end local v2    # "time":Ljava/time/Instant;
    .end local v3    # "unescaped":Ljava/lang/String;
    goto :goto_1

    .line 184
    .restart local v0    # "idx":I
    .restart local v1    # "badHistoryFileSyntax":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    .end local v0    # "idx":I
    .end local v1    # "badHistoryFileSyntax":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-static {p2}, Lorg/jline/reader/impl/history/DefaultHistory;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/jline/reader/impl/history/DefaultHistory;->internalAdd(Ljava/time/Instant;Ljava/lang/String;Z)V

    .line 194
    :goto_1
    return-void
.end method

.method public append(Ljava/nio/file/Path;Z)V
    .locals 2
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "incremental"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 218
    :goto_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lorg/jline/reader/impl/history/DefaultHistory;->getLastLoaded(Ljava/nio/file/Path;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 217
    :goto_1
    invoke-direct {p0, v0, v1}, Lorg/jline/reader/impl/history/DefaultHistory;->internalWrite(Ljava/nio/file/Path;I)V

    .line 219
    return-void
.end method

.method public attach(Lorg/jline/reader/LineReader;)V
    .locals 4
    .param p1, "reader"    # Lorg/jline/reader/LineReader;

    .line 66
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->reader:Lorg/jline/reader/LineReader;

    if-eq v0, p1, :cond_0

    .line 67
    iput-object p1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->reader:Lorg/jline/reader/LineReader;

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->load()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to load history"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lorg/jline/utils/Log;->warn([Ljava/lang/Object;)V

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void
.end method

.method protected createEntry(ILjava/time/Instant;Ljava/lang/String;)Lorg/jline/reader/impl/history/DefaultHistory$EntryImpl;
    .locals 1
    .param p1, "index"    # I
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "line"    # Ljava/lang/String;

    .line 293
    new-instance v0, Lorg/jline/reader/impl/history/DefaultHistory$EntryImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/jline/reader/impl/history/DefaultHistory$EntryImpl;-><init>(ILjava/time/Instant;Ljava/lang/String;)V

    return-object v0
.end method

.method public current()Ljava/lang/String;
    .locals 2

    .line 541
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    invoke-virtual {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 542
    const-string v0, ""

    return-object v0

    .line 544
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    iget v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/History$Entry;

    invoke-interface {v0}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public first()I
    .locals 1

    .line 335
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->offset:I

    return v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .line 350
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->offset:I

    sub-int v0, p1, v0

    .line 351
    .local v0, "idx":I
    iget-object v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 354
    iget-object v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/reader/History$Entry;

    invoke-interface {v1}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 352
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndexOutOfBounds: Index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public index()I
    .locals 2

    .line 331
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->offset:I

    iget v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected internalAdd(Ljava/time/Instant;Ljava/lang/String;)V
    .locals 1
    .param p1, "time"    # Ljava/time/Instant;
    .param p2, "line"    # Ljava/lang/String;

    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jline/reader/impl/history/DefaultHistory;->internalAdd(Ljava/time/Instant;Ljava/lang/String;Z)V

    .line 413
    return-void
.end method

.method protected internalAdd(Ljava/time/Instant;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "time"    # Ljava/time/Instant;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "checkDuplicates"    # Z

    .line 416
    new-instance v0, Lorg/jline/reader/impl/history/DefaultHistory$EntryImpl;

    iget v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->offset:I

    iget-object v2, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1, p1, p2}, Lorg/jline/reader/impl/history/DefaultHistory$EntryImpl;-><init>(ILjava/time/Instant;Ljava/lang/String;)V

    .line 417
    .local v0, "entry":Lorg/jline/reader/History$Entry;
    if-eqz p3, :cond_1

    .line 418
    iget-object v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/reader/History$Entry;

    .line 419
    .local v2, "e":Lorg/jline/reader/History$Entry;
    invoke-interface {v2}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    return-void

    .line 422
    .end local v2    # "e":Lorg/jline/reader/History$Entry;
    :cond_0
    goto :goto_0

    .line 424
    :cond_1
    iget-object v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->maybeResize()V

    .line 426
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Lorg/jline/reader/History$Entry;",
            ">;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    iget v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->offset:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$load$0$org-jline-reader-impl-history-DefaultHistory(Ljava/nio/file/Path;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "line"    # Ljava/lang/String;

    .line 86
    invoke-virtual {p0, p1, p2}, Lorg/jline/reader/impl/history/DefaultHistory;->addHistoryLine(Ljava/nio/file/Path;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$read$1$org-jline-reader-impl-history-DefaultHistory(Ljava/nio/file/Path;ZLjava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "incremental"    # Z
    .param p3, "line"    # Ljava/lang/String;

    .line 107
    invoke-virtual {p0, p1, p3, p2}, Lorg/jline/reader/impl/history/DefaultHistory;->addHistoryLine(Ljava/nio/file/Path;Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic lambda$trimHistory$2$org-jline-reader-impl-history-DefaultHistory(Ljava/util/LinkedList;Ljava/lang/String;)V
    .locals 4
    .param p1, "allItems"    # Ljava/util/LinkedList;
    .param p2, "l"    # Ljava/lang/String;

    .line 257
    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 258
    .local v0, "idx":I
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    .line 259
    .local v1, "time":Ljava/time/Instant;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jline/reader/impl/history/DefaultHistory;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {p0, v3, v1, v2}, Lorg/jline/reader/impl/history/DefaultHistory;->createEntry(ILjava/time/Instant;Ljava/lang/String;)Lorg/jline/reader/impl/history/DefaultHistory$EntryImpl;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method public last()I
    .locals 2

    .line 339
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->offset:I

    iget-object v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public load()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 80
    .local v0, "path":Ljava/nio/file/Path;
    if-eqz v0, :cond_2

    .line 82
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Loading history from: "

    aput-object v5, v4, v3

    aput-object v0, v4, v1

    invoke-static {v4}, Lorg/jline/utils/Log;->trace([Ljava/lang/Object;)V

    .line 84
    invoke-static {v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->internalClear()V

    .line 86
    invoke-virtual {v4}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/jline/reader/impl/history/DefaultHistory$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v0}, Lorg/jline/reader/impl/history/DefaultHistory$$ExternalSyntheticLambda2;-><init>(Lorg/jline/reader/impl/history/DefaultHistory;Ljava/nio/file/Path;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 87
    new-instance v5, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;

    iget-object v6, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    iget-object v7, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-direct {v5, p0, v6, v7}, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;-><init>(Lorg/jline/reader/impl/history/DefaultHistory;II)V

    invoke-direct {p0, v0, v5}, Lorg/jline/reader/impl/history/DefaultHistory;->setHistoryFileData(Ljava/nio/file/Path;Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;)V

    .line 88
    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->maybeResize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 84
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "path":Ljava/nio/file/Path;
    :cond_0
    :goto_0
    throw v5
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 95
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "path":Ljava/nio/file/Path;
    :cond_1
    :goto_1
    goto :goto_3

    .line 91
    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    .line 92
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "Failed to load history; clearing"

    aput-object v5, v2, v3

    aput-object v4, v2, v1

    invoke-static {v2}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->internalClear()V

    .line 94
    throw v4

    .line 97
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    return-void
.end method

.method protected matchPatterns(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "patterns"    # Ljava/lang/String;
    .param p2, "line"    # Ljava/lang/String;

    .line 391
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 396
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 397
    .local v2, "ch":C
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_1

    .line 398
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 399
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 400
    :cond_1
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_2

    .line 401
    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 402
    :cond_2
    const/16 v3, 0x2a

    if-ne v2, v3, :cond_3

    .line 403
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 405
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    .end local v2    # "ch":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 392
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public moveTo(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 507
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->offset:I

    sub-int/2addr p1, v0

    .line 508
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 509
    iput p1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    .line 510
    const/4 v0, 0x1

    return v0

    .line 512
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveToEnd()V
    .locals 1

    .line 534
    invoke-virtual {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->size()I

    move-result v0

    iput v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    .line 535
    return-void
.end method

.method public moveToFirst()Z
    .locals 2

    .line 522
    invoke-virtual {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    if-eqz v0, :cond_0

    .line 523
    iput v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    .line 524
    const/4 v0, 0x1

    return v0

    .line 526
    :cond_0
    return v1
.end method

.method public moveToLast()Z
    .locals 3

    .line 494
    invoke-virtual {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 495
    .local v0, "lastEntry":I
    if-ltz v0, :cond_0

    iget v2, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    if-eq v0, v2, :cond_0

    .line 496
    invoke-virtual {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->size()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    .line 497
    return v1

    .line 500
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public next()Z
    .locals 2

    .line 566
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    invoke-virtual {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 567
    const/4 v0, 0x0

    return v0

    .line 569
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    .line 570
    return v1
.end method

.method public previous()Z
    .locals 2

    .line 553
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    if-gtz v0, :cond_0

    .line 554
    const/4 v0, 0x0

    return v0

    .line 556
    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    .line 557
    return v1
.end method

.method public purge()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->internalClear()V

    .line 199
    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 200
    .local v0, "path":Ljava/nio/file/Path;
    if-eqz v0, :cond_0

    .line 201
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Purging history from: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lorg/jline/utils/Log;->trace([Ljava/lang/Object;)V

    .line 202
    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 204
    :cond_0
    return-void
.end method

.method public read(Ljava/nio/file/Path;Z)V
    .locals 8
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "incremental"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 102
    .local v0, "path":Ljava/nio/file/Path;
    :goto_0
    if-eqz v0, :cond_3

    .line 104
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Reading history from: "

    aput-object v5, v4, v3

    aput-object v0, v4, v1

    invoke-static {v4}, Lorg/jline/utils/Log;->trace([Ljava/lang/Object;)V

    .line 106
    invoke-static {v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/jline/reader/impl/history/DefaultHistory$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v0, p2}, Lorg/jline/reader/impl/history/DefaultHistory$$ExternalSyntheticLambda0;-><init>(Lorg/jline/reader/impl/history/DefaultHistory;Ljava/nio/file/Path;Z)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 108
    new-instance v5, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;

    iget-object v6, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    iget-object v7, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-direct {v5, p0, v6, v7}, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;-><init>(Lorg/jline/reader/impl/history/DefaultHistory;II)V

    invoke-direct {p0, v0, v5}, Lorg/jline/reader/impl/history/DefaultHistory;->setHistoryFileData(Ljava/nio/file/Path;Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;)V

    .line 109
    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->maybeResize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 106
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "path":Ljava/nio/file/Path;
    .end local p1    # "file":Ljava/nio/file/Path;
    .end local p2    # "incremental":Z
    :cond_1
    :goto_1
    throw v5
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 116
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "path":Ljava/nio/file/Path;
    .restart local p1    # "file":Ljava/nio/file/Path;
    .restart local p2    # "incremental":Z
    :cond_2
    :goto_2
    goto :goto_4

    .line 112
    :catch_0
    move-exception v4

    goto :goto_3

    :catch_1
    move-exception v4

    .line 113
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "Failed to read history; clearing"

    aput-object v5, v2, v3

    aput-object v4, v2, v1

    invoke-static {v2}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 114
    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->internalClear()V

    .line 115
    throw v4

    .line 118
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    return-void
.end method

.method public resetIndex()V
    .locals 2

    .line 449
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    iget-object v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    :goto_0
    iput v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->index:I

    .line 450
    return-void
.end method

.method public save()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jline/reader/impl/history/DefaultHistory;->getLastLoaded(Ljava/nio/file/Path;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/jline/reader/impl/history/DefaultHistory;->internalWrite(Ljava/nio/file/Path;I)V

    .line 224
    return-void
.end method

.method public size()I
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/jline/reader/History$Entry;",
            ">;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->iterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/reader/History$Entry;

    .line 577
    .local v2, "e":Lorg/jline/reader/History$Entry;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .end local v2    # "e":Lorg/jline/reader/History$Entry;
    goto :goto_0

    .line 579
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected trimHistory(Ljava/nio/file/Path;I)V
    .locals 8
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Trimming history path: "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/jline/utils/Log;->trace([Ljava/lang/Object;)V

    .line 254
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 255
    .local v0, "allItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jline/reader/History$Entry;>;"
    invoke-static {p1}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v3

    .line 256
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/jline/reader/impl/history/DefaultHistory$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v0}, Lorg/jline/reader/impl/history/DefaultHistory$$ExternalSyntheticLambda1;-><init>(Lorg/jline/reader/impl/history/DefaultHistory;Ljava/util/LinkedList;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 262
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 264
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :cond_0
    invoke-static {v0, p2}, Lorg/jline/reader/impl/history/DefaultHistory;->doTrimHistory(Ljava/util/List;I)V

    .line 266
    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/nio/file/attribute/FileAttribute;

    const-string v6, ".tmp"

    invoke-static {v3, v4, v6, v5}, Ljava/nio/file/Files;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v3

    .line 267
    .local v3, "temp":Ljava/nio/file/Path;
    new-array v4, v1, [Ljava/nio/file/OpenOption;

    sget-object v5, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v4

    .line 268
    .local v4, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jline/reader/History$Entry;

    .line 269
    .local v6, "entry":Lorg/jline/reader/History$Entry;
    invoke-direct {p0, v6}, Lorg/jline/reader/impl/history/DefaultHistory;->format(Lorg/jline/reader/History$Entry;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    nop

    .end local v6    # "entry":Lorg/jline/reader/History$Entry;
    goto :goto_0

    .line 271
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 272
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    new-array v1, v1, [Ljava/nio/file/CopyOption;

    sget-object v4, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v4, v1, v2

    invoke-static {v3, p1, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 274
    invoke-direct {p0, p1}, Lorg/jline/reader/impl/history/DefaultHistory;->isLineReaderHistory(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->internalClear()V

    .line 276
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/reader/History$Entry;

    invoke-interface {v1}, Lorg/jline/reader/History$Entry;->index()I

    move-result v1

    iput v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->offset:I

    .line 277
    iget-object v1, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 278
    new-instance v1, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;

    iget-object v2, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget-object v4, p0, Lorg/jline/reader/impl/history/DefaultHistory;->items:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-direct {v1, p0, v2, v4}, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;-><init>(Lorg/jline/reader/impl/history/DefaultHistory;II)V

    invoke-direct {p0, p1, v1}, Lorg/jline/reader/impl/history/DefaultHistory;->setHistoryFileData(Ljava/nio/file/Path;Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;)V

    goto :goto_1

    .line 280
    :cond_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/jline/reader/impl/history/DefaultHistory;->setEntriesInFile(Ljava/nio/file/Path;I)V

    .line 282
    :goto_1
    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->maybeResize()V

    .line 283
    return-void

    .line 267
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v1

    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1

    .line 255
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .local v3, "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v1

    if-eqz v3, :cond_5

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v1
.end method

.method public write(Ljava/nio/file/Path;Z)V
    .locals 3
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "incremental"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/jline/reader/impl/history/DefaultHistory;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 209
    .local v0, "path":Ljava/nio/file/Path;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 212
    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/history/DefaultHistory;->getLastLoaded(Ljava/nio/file/Path;)I

    move-result v1

    :cond_2
    invoke-direct {p0, v0, v1}, Lorg/jline/reader/impl/history/DefaultHistory;->internalWrite(Ljava/nio/file/Path;I)V

    .line 213
    return-void
.end method
