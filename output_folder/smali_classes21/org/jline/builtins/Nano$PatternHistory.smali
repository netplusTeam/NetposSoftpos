.class public Lorg/jline/builtins/Nano$PatternHistory;
.super Ljava/lang/Object;
.source "Nano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Nano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PatternHistory"
.end annotation


# instance fields
.field private final historyFile:Ljava/nio/file/Path;

.field private lastMoveUp:Z

.field private patternId:I

.field private patterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "historyFile"    # Ljava/nio/file/Path;

    .line 1820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1815
    const/16 v0, 0x64

    iput v0, p0, Lorg/jline/builtins/Nano$PatternHistory;->size:I

    .line 1816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    .line 1817
    const/4 v0, -0x1

    iput v0, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    .line 1818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/builtins/Nano$PatternHistory;->lastMoveUp:Z

    .line 1821
    iput-object p1, p0, Lorg/jline/builtins/Nano$PatternHistory;->historyFile:Ljava/nio/file/Path;

    .line 1822
    invoke-direct {p0}, Lorg/jline/builtins/Nano$PatternHistory;->load()V

    .line 1823
    return-void
.end method

.method private load()V
    .locals 3

    .line 1911
    iget-object v0, p0, Lorg/jline/builtins/Nano$PatternHistory;->historyFile:Ljava/nio/file/Path;

    if-nez v0, :cond_0

    .line 1912
    return-void

    .line 1915
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1916
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    .line 1917
    iget-object v0, p0, Lorg/jline/builtins/Nano$PatternHistory;->historyFile:Ljava/nio/file/Path;

    .line 1918
    invoke-static {v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1919
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/Nano$PatternHistory$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/jline/builtins/Nano$PatternHistory$$ExternalSyntheticLambda0;-><init>(Lorg/jline/builtins/Nano$PatternHistory;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1920
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1917
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1924
    .end local v0    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    goto :goto_2

    .line 1922
    :catch_0
    move-exception v0

    .line 1925
    :goto_2
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1880
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1881
    return-void

    .line 1883
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1884
    iget-object v0, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 1885
    iget-object v0, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1887
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1888
    const/4 v0, -0x1

    iput v0, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    .line 1889
    return-void
.end method

.method public down(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "hint"    # Ljava/lang/String;

    .line 1853
    move-object v0, p1

    .line 1854
    .local v0, "out":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1855
    iget-boolean v1, p0, Lorg/jline/builtins/Nano$PatternHistory;->lastMoveUp:Z

    if-eqz v1, :cond_0

    .line 1856
    iget v1, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    .line 1858
    :cond_0
    iget v1, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    const/4 v2, -0x1

    if-gez v1, :cond_1

    .line 1859
    iput v2, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    goto :goto_2

    .line 1861
    :cond_1
    const/4 v1, 0x0

    .line 1862
    .local v1, "found":Z
    iget v3, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    .local v3, "pid":I
    :goto_0
    if-ltz v3, :cond_4

    .line 1863
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1862
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1864
    :cond_3
    :goto_1
    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    .line 1865
    iget-object v4, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    .line 1866
    const/4 v1, 0x1

    .line 1870
    .end local v3    # "pid":I
    :cond_4
    if-nez v1, :cond_5

    .line 1871
    iput v2, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    .line 1875
    .end local v1    # "found":Z
    :cond_5
    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jline/builtins/Nano$PatternHistory;->lastMoveUp:Z

    .line 1876
    return-object v0
.end method

.method synthetic lambda$load$0$org-jline-builtins-Nano$PatternHistory(Ljava/lang/String;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .line 1919
    iget-object v0, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public persist()V
    .locals 4

    .line 1892
    iget-object v0, p0, Lorg/jline/builtins/Nano$PatternHistory;->historyFile:Ljava/nio/file/Path;

    if-nez v0, :cond_0

    .line 1893
    return-void

    .line 1896
    :cond_0
    nop

    .line 1897
    :try_start_0
    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v1, v2

    .line 1896
    invoke-static {v0, v1}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1898
    .local v0, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    iget-object v1, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1899
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1900
    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1901
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1903
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1904
    :cond_2
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1907
    .end local v0    # "writer":Ljava/io/BufferedWriter;
    :cond_3
    goto :goto_2

    .line 1896
    .restart local v0    # "writer":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1905
    .end local v0    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 1908
    :goto_2
    return-void
.end method

.method public up(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "hint"    # Ljava/lang/String;

    .line 1826
    move-object v0, p1

    .line 1827
    .local v0, "out":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_5

    iget v1, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    iget-object v3, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1828
    iget-boolean v1, p0, Lorg/jline/builtins/Nano$PatternHistory;->lastMoveUp:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    if-lez v1, :cond_0

    iget-object v3, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_0

    .line 1829
    iget v1, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    .line 1831
    :cond_0
    iget v1, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    if-gez v1, :cond_1

    .line 1832
    const/4 v1, 0x0

    iput v1, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    .line 1834
    :cond_1
    const/4 v1, 0x0

    .line 1835
    .local v1, "found":Z
    iget v3, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    .local v3, "pid":I
    :goto_0
    iget-object v4, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1836
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    .line 1837
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1835
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1838
    :cond_3
    :goto_1
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    .line 1839
    iget-object v4, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    .line 1840
    const/4 v1, 0x1

    .line 1844
    .end local v3    # "pid":I
    :cond_4
    if-nez v1, :cond_5

    .line 1845
    iget-object v3, p0, Lorg/jline/builtins/Nano$PatternHistory;->patterns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lorg/jline/builtins/Nano$PatternHistory;->patternId:I

    .line 1848
    .end local v1    # "found":Z
    :cond_5
    iput-boolean v2, p0, Lorg/jline/builtins/Nano$PatternHistory;->lastMoveUp:Z

    .line 1849
    return-object v0
.end method
