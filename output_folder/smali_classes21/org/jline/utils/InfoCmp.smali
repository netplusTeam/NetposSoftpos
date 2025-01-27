.class public final Lorg/jline/utils/InfoCmp;
.super Ljava/lang/Object;
.source "InfoCmp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/utils/InfoCmp$Capability;
    }
.end annotation


# static fields
.field private static final CAPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jline/utils/InfoCmp;->CAPS:Ljava/util/Map;

    .line 620
    const-string v1, "dumb"

    const-string v2, "dumb-color"

    const-string v3, "ansi"

    const-string v4, "xterm"

    const-string v5, "xterm-256color"

    const-string v6, "windows"

    const-string v7, "windows-256color"

    const-string v8, "windows-conemu"

    const-string v9, "windows-vtp"

    const-string v10, "screen"

    const-string v11, "screen-256color"

    const-string v12, "rxvt-unicode"

    const-string v13, "rxvt-unicode-256color"

    const-string v14, "rxvt-basic"

    const-string v15, "rxvt"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 623
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Lorg/jline/utils/InfoCmp$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/jline/utils/InfoCmp$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/jline/utils/InfoCmp;->setDefaultInfoCmp(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 624
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_0

    .line 625
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getCapabilitiesByName()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/utils/InfoCmp$Capability;",
            ">;"
        }
    .end annotation

    .line 516
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 517
    .local v0, "capabilities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/utils/InfoCmp$Capability;>;"
    :try_start_0
    const-class v1, Lorg/jline/utils/InfoCmp;

    const-string v2, "capabilities.txt"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Lorg/jline/utils/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Lorg/jline/utils/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 519
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/jline/utils/InfoCmp$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lorg/jline/utils/InfoCmp$$ExternalSyntheticLambda1;-><init>()V

    .line 520
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/jline/utils/InfoCmp$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lorg/jline/utils/InfoCmp$$ExternalSyntheticLambda2;-><init>()V

    .line 521
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/jline/utils/InfoCmp$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lorg/jline/utils/InfoCmp$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map;)V

    .line 522
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    nop

    .line 529
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 528
    :cond_0
    return-object v0

    .line 517
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "capabilities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/utils/InfoCmp$Capability;>;"
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "capabilities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/utils/InfoCmp$Capability;>;"
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "capabilities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/utils/InfoCmp$Capability;>;"
    :cond_1
    :goto_1
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 529
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "capabilities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/utils/InfoCmp$Capability;>;"
    :catch_0
    move-exception v1

    .line 530
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInfoCmp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "terminal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 545
    invoke-static {p0}, Lorg/jline/utils/InfoCmp;->getLoadedInfoCmp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "caps":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 547
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lorg/jline/utils/OSUtils;->INFOCMP_COMMAND:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 548
    .local v1, "p":Ljava/lang/Process;
    invoke-static {v1}, Lorg/jline/utils/ExecHelper;->waitAndCapture(Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v0

    .line 549
    sget-object v2, Lorg/jline/utils/InfoCmp;->CAPS:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .end local v1    # "p":Ljava/lang/Process;
    :cond_0
    return-object v0
.end method

.method public static getLoadedInfoCmp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "terminal"    # Ljava/lang/String;

    .line 555
    sget-object v0, Lorg/jline/utils/InfoCmp;->CAPS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 556
    .local v0, "caps":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/function/Supplier;

    if-eqz v1, :cond_0

    .line 557
    move-object v1, v0

    check-cast v1, Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 559
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method static synthetic lambda$getCapabilitiesByName$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 520
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getCapabilitiesByName$1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 521
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getCapabilitiesByName$2(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .param p0, "capabilities"    # Ljava/util/Map;
    .param p1, "s"    # Ljava/lang/String;

    .line 523
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "names":[Ljava/lang/String;
    const-class v1, Lorg/jline/utils/InfoCmp$Capability;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v1, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/jline/utils/InfoCmp$Capability;

    .line 525
    .local v1, "cap":Lorg/jline/utils/InfoCmp$Capability;
    aget-object v2, v0, v2

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    return-void
.end method

.method static synthetic lambda$static$3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 623
    invoke-static {p0}, Lorg/jline/utils/InfoCmp;->loadDefaultInfoCmp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static loadDefaultInfoCmp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 611
    const-string v0, "\n"

    :try_start_0
    const-class v1, Lorg/jline/utils/InfoCmp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".caps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Lorg/jline/utils/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Lorg/jline/utils/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 613
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v3

    const-string v4, ""

    invoke-static {v0, v4, v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 614
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 613
    :cond_0
    return-object v0

    .line 611
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "is":Ljava/io/InputStream;
    .end local p0    # "name":Ljava/lang/String;
    :goto_0
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local p0    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 614
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p0    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseInfoCmp(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .param p0, "capabilities"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lorg/jline/utils/InfoCmp$Capability;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/jline/utils/InfoCmp$Capability;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/jline/utils/InfoCmp$Capability;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 568
    .local p1, "bools":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/utils/InfoCmp$Capability;>;"
    .local p2, "ints":Ljava/util/Map;, "Ljava/util/Map<Lorg/jline/utils/InfoCmp$Capability;Ljava/lang/Integer;>;"
    .local p3, "strings":Ljava/util/Map;, "Ljava/util/Map<Lorg/jline/utils/InfoCmp$Capability;Ljava/lang/String;>;"
    invoke-static {}, Lorg/jline/utils/InfoCmp;->getCapabilitiesByName()Ljava/util/Map;

    move-result-object v0

    .line 569
    .local v0, "capsByName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/utils/InfoCmp$Capability;>;"
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, "lines":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_9

    .line 571
    const-string v3, "\\s*(([^,]|\\\\,)+)\\s*[,$]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 572
    .local v3, "m":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 573
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 574
    .local v5, "cap":Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    .line 575
    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 576
    .local v6, "index":I
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 577
    .local v7, "key":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 579
    .local v8, "val":Ljava/lang/String;
    const-string v9, "0"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 580
    const/4 v4, 0x0

    .local v4, "iVal":I
    goto :goto_2

    .line 581
    .end local v4    # "iVal":I
    :cond_0
    const-string v10, "0x"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 582
    const/4 v4, 0x2

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x10

    invoke-static {v4, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "iVal":I
    goto :goto_2

    .line 583
    .end local v4    # "iVal":I
    :cond_1
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 584
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x8

    invoke-static {v4, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "iVal":I
    goto :goto_2

    .line 586
    .end local v4    # "iVal":I
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 588
    .restart local v4    # "iVal":I
    :goto_2
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jline/utils/InfoCmp$Capability;

    .line 589
    .local v9, "c":Lorg/jline/utils/InfoCmp$Capability;
    if-eqz v9, :cond_3

    .line 590
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .end local v4    # "iVal":I
    .end local v6    # "index":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "c":Lorg/jline/utils/InfoCmp$Capability;
    :cond_3
    goto :goto_3

    :cond_4
    const-string v4, "="

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 593
    const/16 v4, 0x3d

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 594
    .local v4, "index":I
    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 595
    .local v6, "key":Ljava/lang/String;
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 596
    .local v7, "val":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jline/utils/InfoCmp$Capability;

    .line 597
    .local v8, "c":Lorg/jline/utils/InfoCmp$Capability;
    if-eqz v8, :cond_5

    .line 598
    invoke-interface {p3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .end local v4    # "index":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "val":Ljava/lang/String;
    .end local v8    # "c":Lorg/jline/utils/InfoCmp$Capability;
    :cond_5
    goto :goto_3

    .line 601
    :cond_6
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/utils/InfoCmp$Capability;

    .line 602
    .local v4, "c":Lorg/jline/utils/InfoCmp$Capability;
    if-eqz v4, :cond_7

    .line 603
    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 606
    .end local v4    # "c":Lorg/jline/utils/InfoCmp$Capability;
    .end local v5    # "cap":Ljava/lang/String;
    :cond_7
    :goto_3
    goto/16 :goto_1

    .line 570
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 608
    .end local v2    # "i":I
    :cond_9
    return-void
.end method

.method public static setDefaultInfoCmp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "terminal"    # Ljava/lang/String;
    .param p1, "caps"    # Ljava/lang/String;

    .line 535
    sget-object v0, Lorg/jline/utils/InfoCmp;->CAPS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    return-void
.end method

.method public static setDefaultInfoCmp(Ljava/lang/String;Ljava/util/function/Supplier;)V
    .locals 1
    .param p0, "terminal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 539
    .local p1, "caps":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Lorg/jline/utils/InfoCmp;->CAPS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    return-void
.end method
