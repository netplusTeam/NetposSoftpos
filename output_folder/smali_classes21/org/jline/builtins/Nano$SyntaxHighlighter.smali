.class public Lorg/jline/builtins/Nano$SyntaxHighlighter;
.super Ljava/lang/Object;
.source "Nano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Nano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyntaxHighlighter"
.end annotation


# instance fields
.field private ruleStartId:I

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/builtins/Nano$HighlightRule;",
            ">;"
        }
    .end annotation
.end field

.field private startEndHighlight:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Nano$SyntaxHighlighter;->rules:Ljava/util/List;

    .line 1416
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/builtins/Nano$SyntaxHighlighter;->ruleStartId:I

    .line 1418
    return-void
.end method

.method private addRules(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/builtins/Nano$HighlightRule;",
            ">;)V"
        }
    .end annotation

    .line 1520
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Nano$HighlightRule;>;"
    iget-object v0, p0, Lorg/jline/builtins/Nano$SyntaxHighlighter;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1521
    return-void
.end method

.method public static build(Ljava/lang/String;)Lorg/jline/builtins/Nano$SyntaxHighlighter;
    .locals 4
    .param p0, "nanorcUrl"    # Ljava/lang/String;

    .line 1502
    new-instance v0, Lorg/jline/builtins/Nano$SyntaxHighlighter;

    invoke-direct {v0}, Lorg/jline/builtins/Nano$SyntaxHighlighter;-><init>()V

    .line 1505
    .local v0, "out":Lorg/jline/builtins/Nano$SyntaxHighlighter;
    :try_start_0
    const-string v1, "classpath:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1506
    new-instance v1, Lorg/jline/builtins/Source$ResourceSource;

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/jline/builtins/Source$ResourceSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jline/builtins/Source$ResourceSource;->read()Ljava/io/InputStream;

    move-result-object v1

    .local v1, "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 1508
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_0
    new-instance v1, Lorg/jline/builtins/Source$URLSource;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v2}, Lorg/jline/builtins/Source$URLSource;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jline/builtins/Source$URLSource;->read()Ljava/io/InputStream;

    move-result-object v1

    .line 1510
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :goto_0
    new-instance v3, Lorg/jline/builtins/Nano$NanorcParser;

    invoke-direct {v3, v1, v2, v2}, Lorg/jline/builtins/Nano$NanorcParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 1511
    .local v2, "parser":Lorg/jline/builtins/Nano$NanorcParser;
    invoke-virtual {v2}, Lorg/jline/builtins/Nano$NanorcParser;->parse()V

    .line 1512
    invoke-virtual {v2}, Lorg/jline/builtins/Nano$NanorcParser;->getHighlightRules()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->addRules(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1515
    .end local v2    # "parser":Lorg/jline/builtins/Nano$NanorcParser;
    goto :goto_1

    .line 1513
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 1516
    :goto_1
    return-object v0
.end method

.method public static build(Ljava/nio/file/Path;Ljava/lang/String;)Lorg/jline/builtins/Nano$SyntaxHighlighter;
    .locals 10
    .param p0, "nanorc"    # Ljava/nio/file/Path;
    .param p1, "syntaxName"    # Ljava/lang/String;

    .line 1462
    new-instance v0, Lorg/jline/builtins/Nano$SyntaxHighlighter;

    invoke-direct {v0}, Lorg/jline/builtins/Nano$SyntaxHighlighter;-><init>()V

    .line 1463
    .local v0, "out":Lorg/jline/builtins/Nano$SyntaxHighlighter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1465
    .local v1, "syntaxFiles":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1466
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 1467
    .local v3, "line":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_3

    .line 1468
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1469
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1470
    invoke-static {v3}, Lorg/jline/builtins/Nano$Parser;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1471
    .local v4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "include"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1472
    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 1481
    :cond_0
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v6, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1474
    :cond_1
    :goto_1
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "glob:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v7

    .line 1475
    .local v7, "pathMatcher":Ljava/nio/file/PathMatcher;
    new-instance v8, Ljava/io/File;

    .line 1476
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    new-array v8, v5, [Ljava/lang/String;

    invoke-static {v6, v8}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    const v8, 0x7fffffff

    new-instance v9, Lorg/jline/builtins/Nano$SyntaxHighlighter$$ExternalSyntheticLambda0;

    invoke-direct {v9, v7}, Lorg/jline/builtins/Nano$SyntaxHighlighter$$ExternalSyntheticLambda0;-><init>(Ljava/nio/file/PathMatcher;)V

    new-array v5, v5, [Ljava/nio/file/FileVisitOption;

    .line 1475
    invoke-static {v6, v8, v9, v5}, Ljava/nio/file/Files;->find(Ljava/nio/file/Path;ILjava/util/function/BiPredicate;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 1479
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/jline/builtins/Less$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1}, Lorg/jline/builtins/Less$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1485
    .end local v4    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "pathMatcher":Ljava/nio/file/PathMatcher;
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto/16 :goto_0

    .line 1487
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1488
    const/4 v4, 0x0

    invoke-static {v1, v4, p1}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->build(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/jline/builtins/Nano$SyntaxHighlighter;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 1491
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    goto :goto_3

    .line 1489
    :catch_0
    move-exception v2

    .line 1492
    :goto_3
    return-object v0
.end method

.method protected static build(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/jline/builtins/Nano$SyntaxHighlighter;
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "syntaxName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jline/builtins/Nano$SyntaxHighlighter;"
        }
    .end annotation

    .line 1421
    .local p0, "syntaxFiles":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->build(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jline/builtins/Nano$SyntaxHighlighter;

    move-result-object v0

    return-object v0
.end method

.method protected static build(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jline/builtins/Nano$SyntaxHighlighter;
    .locals 6
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "syntaxName"    # Ljava/lang/String;
    .param p3, "ignoreErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/jline/builtins/Nano$SyntaxHighlighter;"
        }
    .end annotation

    .line 1426
    .local p0, "syntaxFiles":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    new-instance v0, Lorg/jline/builtins/Nano$SyntaxHighlighter;

    invoke-direct {v0}, Lorg/jline/builtins/Nano$SyntaxHighlighter;-><init>()V

    .line 1427
    .local v0, "out":Lorg/jline/builtins/Nano$SyntaxHighlighter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1429
    .local v1, "defaultRules":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Nano$HighlightRule;>;"
    if-eqz p2, :cond_0

    if-eqz p2, :cond_4

    :try_start_0
    const-string v2, "none"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1430
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1432
    .local v3, "p":Ljava/nio/file/Path;
    :try_start_1
    new-instance v4, Lorg/jline/builtins/Nano$NanorcParser;

    invoke-direct {v4, v3, p2, p1}, Lorg/jline/builtins/Nano$NanorcParser;-><init>(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    .local v4, "parser":Lorg/jline/builtins/Nano$NanorcParser;
    invoke-virtual {v4}, Lorg/jline/builtins/Nano$NanorcParser;->parse()V

    .line 1434
    invoke-virtual {v4}, Lorg/jline/builtins/Nano$NanorcParser;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1435
    invoke-virtual {v4}, Lorg/jline/builtins/Nano$NanorcParser;->getHighlightRules()Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->addRules(Ljava/util/List;)V

    .line 1436
    return-object v0

    .line 1437
    :cond_1
    invoke-virtual {v4}, Lorg/jline/builtins/Nano$NanorcParser;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1438
    invoke-virtual {v4}, Lorg/jline/builtins/Nano$NanorcParser;->getHighlightRules()Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1442
    .end local v4    # "parser":Lorg/jline/builtins/Nano$NanorcParser;
    :cond_2
    goto :goto_1

    .line 1440
    :catch_0
    move-exception v4

    .line 1443
    .end local v3    # "p":Ljava/nio/file/Path;
    :goto_1
    goto :goto_0

    .line 1444
    :cond_3
    :try_start_2
    invoke-direct {v0, v1}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->addRules(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1450
    :cond_4
    goto :goto_2

    .line 1446
    :catch_1
    move-exception v2

    .line 1447
    .local v2, "e":Ljava/util/regex/PatternSyntaxException;
    if-eqz p3, :cond_5

    .line 1451
    .end local v2    # "e":Ljava/util/regex/PatternSyntaxException;
    :goto_2
    return-object v0

    .line 1448
    .restart local v2    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_5
    throw v2
.end method

.method static synthetic lambda$build$0(Ljava/nio/file/PathMatcher;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 1
    .param p0, "pathMatcher"    # Ljava/nio/file/PathMatcher;
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "f"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 1478
    invoke-interface {p0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public highlight(Ljava/lang/String;)Lorg/jline/utils/AttributedString;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 1529
    new-instance v0, Lorg/jline/utils/AttributedString;

    invoke-direct {v0, p1}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->highlight(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method

.method public highlight(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedString;
    .locals 12
    .param p1, "line"    # Lorg/jline/utils/AttributedString;

    .line 1537
    iget-object v0, p0, Lorg/jline/builtins/Nano$SyntaxHighlighter;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    return-object p1

    .line 1540
    :cond_0
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 1541
    .local v0, "asb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {v0, p1}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1542
    iget v1, p0, Lorg/jline/builtins/Nano$SyntaxHighlighter;->ruleStartId:I

    .line 1543
    .local v1, "startId":I
    iget-boolean v2, p0, Lorg/jline/builtins/Nano$SyntaxHighlighter;->startEndHighlight:Z

    .line 1544
    .local v2, "endHighlight":Z
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-eqz v2, :cond_1

    add-int/lit8 v4, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/jline/builtins/Nano$SyntaxHighlighter;->rules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_7

    .line 1545
    iget-object v4, p0, Lorg/jline/builtins/Nano$SyntaxHighlighter;->rules:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/builtins/Nano$HighlightRule;

    .line 1546
    .local v4, "rule":Lorg/jline/builtins/Nano$HighlightRule;
    sget-object v5, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$HighlightRule$RuleType:[I

    invoke-virtual {v4}, Lorg/jline/builtins/Nano$HighlightRule;->getType()Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_6

    .line 1551
    :pswitch_0
    const/4 v5, 0x0

    .line 1552
    .local v5, "done":Z
    invoke-virtual {v4}, Lorg/jline/builtins/Nano$HighlightRule;->getStart()Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1553
    .local v6, "start":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Lorg/jline/builtins/Nano$HighlightRule;->getEnd()Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1554
    .local v7, "end":Ljava/util/regex/Matcher;
    :goto_2
    if-nez v5, :cond_6

    .line 1555
    new-instance v8, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v8}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 1556
    .local v8, "a":Lorg/jline/utils/AttributedStringBuilder;
    iget-boolean v9, p0, Lorg/jline/builtins/Nano$SyntaxHighlighter;->startEndHighlight:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    iget v9, p0, Lorg/jline/builtins/Nano$SyntaxHighlighter;->ruleStartId:I

    if-ne v9, v3, :cond_3

    .line 1557
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1558
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {v0, v10, v9}, Lorg/jline/utils/AttributedStringBuilder;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v9

    invoke-virtual {v4}, Lorg/jline/builtins/Nano$HighlightRule;->getStyle()Lorg/jline/utils/AttributedStyle;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1559
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->length()I

    move-result v11

    invoke-virtual {v0, v9, v11}, Lorg/jline/utils/AttributedStringBuilder;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1560
    iput v10, p0, Lorg/jline/builtins/Nano$SyntaxHighlighter;->ruleStartId:I

    .line 1561
    iput-boolean v10, p0, Lorg/jline/builtins/Nano$SyntaxHighlighter;->startEndHighlight:Z

    goto :goto_3

    .line 1563
    :cond_2
    invoke-virtual {v4}, Lorg/jline/builtins/Nano$HighlightRule;->getStyle()Lorg/jline/utils/AttributedStyle;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1564
    const/4 v5, 0x1

    .line 1566
    :goto_3
    move-object v0, v8

    goto :goto_5

    .line 1568
    :cond_3
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1569
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-virtual {v0, v10, v9}, Lorg/jline/utils/AttributedStringBuilder;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1570
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1571
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Lorg/jline/utils/AttributedStringBuilder;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v9

    invoke-virtual {v4}, Lorg/jline/builtins/Nano$HighlightRule;->getStyle()Lorg/jline/utils/AttributedStyle;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1572
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Lorg/jline/utils/AttributedStringBuilder;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_4

    .line 1574
    :cond_4
    iput v3, p0, Lorg/jline/builtins/Nano$SyntaxHighlighter;->ruleStartId:I

    .line 1575
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/jline/builtins/Nano$SyntaxHighlighter;->startEndHighlight:Z

    .line 1576
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Lorg/jline/utils/AttributedStringBuilder;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v9

    invoke-virtual {v4}, Lorg/jline/builtins/Nano$HighlightRule;->getStyle()Lorg/jline/utils/AttributedStyle;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1577
    const/4 v5, 0x1

    .line 1579
    :goto_4
    move-object v0, v8

    goto :goto_5

    .line 1581
    :cond_5
    const/4 v5, 0x1

    .line 1584
    .end local v8    # "a":Lorg/jline/utils/AttributedStringBuilder;
    :goto_5
    goto/16 :goto_2

    .line 1548
    .end local v5    # "done":Z
    .end local v6    # "start":Ljava/util/regex/Matcher;
    .end local v7    # "end":Ljava/util/regex/Matcher;
    :pswitch_1
    invoke-virtual {v4}, Lorg/jline/builtins/Nano$HighlightRule;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jline/builtins/Nano$HighlightRule;->getStyle()Lorg/jline/utils/AttributedStyle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/jline/utils/AttributedStringBuilder;->styleMatches(Ljava/util/regex/Pattern;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1549
    nop

    .line 1544
    .end local v4    # "rule":Lorg/jline/builtins/Nano$HighlightRule;
    :cond_6
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1588
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public highlight(Lorg/jline/utils/AttributedStringBuilder;)Lorg/jline/utils/AttributedString;
    .locals 1
    .param p1, "asb"    # Lorg/jline/utils/AttributedStringBuilder;

    .line 1533
    invoke-virtual {p1}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->highlight(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 1524
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/builtins/Nano$SyntaxHighlighter;->ruleStartId:I

    .line 1525
    iput-boolean v0, p0, Lorg/jline/builtins/Nano$SyntaxHighlighter;->startEndHighlight:Z

    .line 1526
    return-void
.end method
