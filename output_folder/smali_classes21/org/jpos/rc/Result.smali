.class public Lorg/jpos/rc/Result;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Lorg/jpos/util/Loggeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/rc/Result$Entry;,
        Lorg/jpos/rc/Result$Type;
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jpos/rc/Result$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    .line 36
    return-void
.end method

.method private varargs add(Lorg/jpos/rc/Result$Type;Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;
    .locals 3
    .param p1, "type"    # Lorg/jpos/rc/Result$Type;
    .param p2, "irc"    # Lorg/jpos/rc/IRC;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    new-instance v1, Lorg/jpos/rc/Result$Entry;

    .line 136
    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, p2, p3, v2}, Lorg/jpos/rc/Result$Entry;-><init>(Lorg/jpos/rc/Result$Type;Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-object p0
.end method

.method private isSuccess0()Z
    .locals 3

    .line 195
    iget-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jpos/rc/Result$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$dump$10(Lorg/jpos/rc/Result$Entry;)Z
    .locals 2
    .param p0, "s"    # Lorg/jpos/rc/Result$Entry;

    .line 155
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    sget-object v1, Lorg/jpos/rc/Result$Type;->SUCCESS:Lorg/jpos/rc/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dump$11(Ljava/io/PrintStream;Ljava/lang/String;Lorg/jpos/rc/Result$Entry;)V
    .locals 3
    .param p0, "ps"    # Ljava/io/PrintStream;
    .param p1, "inner"    # Ljava/lang/String;
    .param p2, "e"    # Lorg/jpos/rc/Result$Entry;

    .line 156
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p2, Lorg/jpos/rc/Result$Entry;->irc:Lorg/jpos/rc/IRC;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p2, Lorg/jpos/rc/Result$Entry;->source:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p2, Lorg/jpos/rc/Result$Entry;->message:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%s  [%s] %s %s%n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method static synthetic lambda$dump$12(Lorg/jpos/rc/Result$Entry;)Z
    .locals 2
    .param p0, "s"    # Lorg/jpos/rc/Result$Entry;

    .line 163
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    sget-object v1, Lorg/jpos/rc/Result$Type;->FAIL:Lorg/jpos/rc/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dump$13(Ljava/io/PrintStream;Ljava/lang/String;Lorg/jpos/rc/Result$Entry;)V
    .locals 3
    .param p0, "ps"    # Ljava/io/PrintStream;
    .param p1, "inner"    # Ljava/lang/String;
    .param p2, "e"    # Lorg/jpos/rc/Result$Entry;

    .line 164
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p2, Lorg/jpos/rc/Result$Entry;->irc:Lorg/jpos/rc/IRC;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p2, Lorg/jpos/rc/Result$Entry;->source:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p2, Lorg/jpos/rc/Result$Entry;->message:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%s  [%s] %s %s%n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method static synthetic lambda$dump$14(Lorg/jpos/rc/Result$Entry;)Z
    .locals 2
    .param p0, "s"    # Lorg/jpos/rc/Result$Entry;

    .line 171
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    sget-object v1, Lorg/jpos/rc/Result$Type;->WARN:Lorg/jpos/rc/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dump$15(Ljava/io/PrintStream;Ljava/lang/String;Lorg/jpos/rc/Result$Entry;)V
    .locals 3
    .param p0, "ps"    # Ljava/io/PrintStream;
    .param p1, "inner"    # Ljava/lang/String;
    .param p2, "e"    # Lorg/jpos/rc/Result$Entry;

    .line 172
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p2, Lorg/jpos/rc/Result$Entry;->source:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p2, Lorg/jpos/rc/Result$Entry;->message:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s  [%s] %s%n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method static synthetic lambda$dump$16(Lorg/jpos/rc/Result$Entry;)Z
    .locals 2
    .param p0, "s"    # Lorg/jpos/rc/Result$Entry;

    .line 179
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    sget-object v1, Lorg/jpos/rc/Result$Type;->INFO:Lorg/jpos/rc/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dump$17(Ljava/io/PrintStream;Ljava/lang/String;Lorg/jpos/rc/Result$Entry;)V
    .locals 3
    .param p0, "ps"    # Ljava/io/PrintStream;
    .param p1, "inner"    # Ljava/lang/String;
    .param p2, "e"    # Lorg/jpos/rc/Result$Entry;

    .line 180
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p2, Lorg/jpos/rc/Result$Entry;->source:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p2, Lorg/jpos/rc/Result$Entry;->message:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s  [%s] %s%n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method static synthetic lambda$failure$4(Lorg/jpos/rc/Result$Entry;)Z
    .locals 2
    .param p0, "e"    # Lorg/jpos/rc/Result$Entry;

    .line 93
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    sget-object v1, Lorg/jpos/rc/Result$Type;->FAIL:Lorg/jpos/rc/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$failureList$9(Lorg/jpos/rc/Result$Entry;)Z
    .locals 2
    .param p0, "s"    # Lorg/jpos/rc/Result$Entry;

    .line 131
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    sget-object v1, Lorg/jpos/rc/Result$Type;->FAIL:Lorg/jpos/rc/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$hasFailures$2(Lorg/jpos/rc/Result$Entry;)Z
    .locals 2
    .param p0, "e"    # Lorg/jpos/rc/Result$Entry;

    .line 77
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    sget-object v1, Lorg/jpos/rc/Result$Type;->FAIL:Lorg/jpos/rc/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$hasInfo$0(Lorg/jpos/rc/Result$Entry;)Z
    .locals 2
    .param p0, "e"    # Lorg/jpos/rc/Result$Entry;

    .line 67
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    sget-object v1, Lorg/jpos/rc/Result$Type;->INFO:Lorg/jpos/rc/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$hasInhibit$3(Lorg/jpos/rc/Result$Entry;)Z
    .locals 1
    .param p0, "e"    # Lorg/jpos/rc/Result$Entry;

    .line 82
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->irc:Lorg/jpos/rc/IRC;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->irc:Lorg/jpos/rc/IRC;

    invoke-interface {v0}, Lorg/jpos/rc/IRC;->inhibit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$hasWarnings$1(Lorg/jpos/rc/Result$Entry;)Z
    .locals 2
    .param p0, "e"    # Lorg/jpos/rc/Result$Entry;

    .line 72
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    sget-object v1, Lorg/jpos/rc/Result$Type;->WARN:Lorg/jpos/rc/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$infoList$6(Lorg/jpos/rc/Result$Entry;)Z
    .locals 2
    .param p0, "s"    # Lorg/jpos/rc/Result$Entry;

    .line 110
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    sget-object v1, Lorg/jpos/rc/Result$Type;->INFO:Lorg/jpos/rc/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$isSuccess0$18(Lorg/jpos/rc/Result$Entry;)Z
    .locals 2
    .param p0, "e"    # Lorg/jpos/rc/Result$Entry;

    .line 196
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    sget-object v1, Lorg/jpos/rc/Result$Type;->SUCCESS:Lorg/jpos/rc/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$success$5(Lorg/jpos/rc/Result$Entry;)Z
    .locals 2
    .param p0, "e"    # Lorg/jpos/rc/Result$Entry;

    .line 99
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    sget-object v1, Lorg/jpos/rc/Result$Type;->SUCCESS:Lorg/jpos/rc/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$successList$7(Lorg/jpos/rc/Result$Entry;)Z
    .locals 2
    .param p0, "s"    # Lorg/jpos/rc/Result$Entry;

    .line 117
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    sget-object v1, Lorg/jpos/rc/Result$Type;->SUCCESS:Lorg/jpos/rc/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$warningList$8(Lorg/jpos/rc/Result$Entry;)Z
    .locals 2
    .param p0, "s"    # Lorg/jpos/rc/Result$Entry;

    .line 125
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    sget-object v1, Lorg/jpos/rc/Result$Type;->WARN:Lorg/jpos/rc/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public FAIL()I
    .locals 1

    .line 63
    const/16 v0, 0xc0

    return v0
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "ps"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 144
    const-string v0, "%s<result/>%n"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 145
    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "inner":Ljava/lang/String;
    const-string v3, "%s<result>%n"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 149
    iget-object v3, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    monitor-enter v3

    .line 150
    :try_start_0
    invoke-direct {p0}, Lorg/jpos/rc/Result;->isSuccess0()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 151
    invoke-virtual {p0}, Lorg/jpos/rc/Result;->hasFailures()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, " inhibited=\'true\'"

    goto :goto_0

    :cond_1
    const-string v4, ""

    .line 152
    .local v4, "inhibited":Ljava/lang/String;
    :goto_0
    const-string v5, "%s<success%s>%n"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v1

    aput-object v4, v6, v2

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 153
    iget-object v5, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    .line 154
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/jpos/rc/Result$$ExternalSyntheticLambda18;

    invoke-direct {v6}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda18;-><init>()V

    .line 155
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/jpos/rc/Result$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1, v0}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 156
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 157
    const-string v5, "%s</success>%n"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 159
    .end local v4    # "inhibited":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lorg/jpos/rc/Result;->hasFailures()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 160
    const-string v4, "%s<fail>%n"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 161
    iget-object v4, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    .line 162
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/jpos/rc/Result$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda2;-><init>()V

    .line 163
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/jpos/rc/Result$$ExternalSyntheticLambda3;

    invoke-direct {v5, p1, v0}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 164
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 165
    const-string v4, "%s</fail>%n"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 167
    :cond_3
    invoke-virtual {p0}, Lorg/jpos/rc/Result;->hasWarnings()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 168
    const-string v4, "%s<warn>%n"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 169
    iget-object v4, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    .line 170
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/jpos/rc/Result$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda4;-><init>()V

    .line 171
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/jpos/rc/Result$$ExternalSyntheticLambda5;

    invoke-direct {v5, p1, v0}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda5;-><init>(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 172
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 173
    const-string v4, "%s</warn>%n"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 175
    :cond_4
    invoke-virtual {p0}, Lorg/jpos/rc/Result;->hasInfo()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 176
    const-string v4, "%s<info>%n"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 177
    iget-object v4, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    .line 178
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/jpos/rc/Result$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda6;-><init>()V

    .line 179
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/jpos/rc/Result$$ExternalSyntheticLambda7;

    invoke-direct {v5, p1, v0}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda7;-><init>(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 180
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 181
    const-string v4, "%s</info>%n"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 183
    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    const-string v3, "%s</result>%n"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 185
    return-void

    .line 183
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jpos/rc/Result$Entry;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    return-object v0
.end method

.method public varargs fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;
    .locals 7
    .param p1, "irc"    # Lorg/jpos/rc/IRC;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    monitor-enter v0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/rc/Result;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (inhibits "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/rc/Result;->success()Lorg/jpos/rc/Result$Entry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p3, v1

    .line 54
    :cond_0
    sget-object v2, Lorg/jpos/rc/Result$Type;->FAIL:Lorg/jpos/rc/Result$Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/jpos/rc/Result;->add(Lorg/jpos/rc/Result$Type;Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public failure()Lorg/jpos/rc/Result$Entry;
    .locals 3

    .line 92
    iget-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jpos/rc/Result$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 94
    .local v1, "entry":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/jpos/rc/Result$Entry;>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/rc/Result$Entry;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    .line 95
    .end local v1    # "entry":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/jpos/rc/Result$Entry;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public failureList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jpos/rc/Result$Entry;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    .line 130
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jpos/rc/Result$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda11;-><init>()V

    .line 131
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 132
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 129
    return-object v0
.end method

.method public hasFailures()Z
    .locals 3

    .line 76
    iget-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jpos/rc/Result$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasInfo()Z
    .locals 3

    .line 66
    iget-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jpos/rc/Result$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasInhibit()Z
    .locals 3

    .line 81
    iget-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jpos/rc/Result$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasWarnings()Z
    .locals 3

    .line 71
    iget-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jpos/rc/Result$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 39
    sget-object v1, Lorg/jpos/rc/Result$Type;->INFO:Lorg/jpos/rc/Result$Type;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jpos/rc/Result;->add(Lorg/jpos/rc/Result$Type;Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    move-result-object v0

    return-object v0
.end method

.method public infoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jpos/rc/Result$Entry;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    .line 109
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jpos/rc/Result$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda10;-><init>()V

    .line 110
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 111
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 108
    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    monitor-enter v0

    .line 88
    :try_start_0
    invoke-direct {p0}, Lorg/jpos/rc/Result;->isSuccess0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/jpos/rc/Result;->hasFailures()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public success()Lorg/jpos/rc/Result$Entry;
    .locals 3

    .line 98
    iget-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jpos/rc/Result$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda16;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 100
    .local v1, "entry":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/jpos/rc/Result$Entry;>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/jpos/rc/Result;->hasFailures()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/rc/Result$Entry;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    .line 101
    .end local v1    # "entry":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/jpos/rc/Result$Entry;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs success(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;
    .locals 7
    .param p1, "irc"    # Lorg/jpos/rc/IRC;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 45
    invoke-interface {p1}, Lorg/jpos/rc/IRC;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v2, Lorg/jpos/rc/Result$Type;->SUCCESS:Lorg/jpos/rc/Result$Type;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/jpos/rc/Result;->add(Lorg/jpos/rc/Result$Type;Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid success IRC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public successList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jpos/rc/Result$Entry;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    .line 116
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jpos/rc/Result$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda15;-><init>()V

    .line 117
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 118
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 115
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result{entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 42
    sget-object v1, Lorg/jpos/rc/Result$Type;->WARN:Lorg/jpos/rc/Result$Type;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jpos/rc/Result;->add(Lorg/jpos/rc/Result$Type;Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    move-result-object v0

    return-object v0
.end method

.method public warningList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jpos/rc/Result$Entry;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/jpos/rc/Result;->entries:Ljava/util/List;

    .line 124
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jpos/rc/Result$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lorg/jpos/rc/Result$$ExternalSyntheticLambda17;-><init>()V

    .line 125
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 126
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 123
    return-object v0
.end method
