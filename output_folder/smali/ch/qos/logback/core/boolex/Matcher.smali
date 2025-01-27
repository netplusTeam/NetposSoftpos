.class public Lch/qos/logback/core/boolex/Matcher;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "Matcher.java"

# interfaces
.implements Lch/qos/logback/core/spi/LifeCycle;


# instance fields
.field private canonEq:Z

.field private caseSensitive:Z

.field private name:Ljava/lang/String;

.field private pattern:Ljava/util/regex/Pattern;

.field private regex:Ljava/lang/String;

.field private start:Z

.field private unicodeCase:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/boolex/Matcher;->caseSensitive:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/boolex/Matcher;->canonEq:Z

    .line 28
    iput-boolean v0, p0, Lch/qos/logback/core/boolex/Matcher;->unicodeCase:Z

    .line 30
    iput-boolean v0, p0, Lch/qos/logback/core/boolex/Matcher;->start:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lch/qos/logback/core/boolex/Matcher;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegex()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lch/qos/logback/core/boolex/Matcher;->regex:Ljava/lang/String;

    return-object v0
.end method

.method public isCanonEq()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lch/qos/logback/core/boolex/Matcher;->canonEq:Z

    return v0
.end method

.method public isCaseSensitive()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lch/qos/logback/core/boolex/Matcher;->caseSensitive:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lch/qos/logback/core/boolex/Matcher;->start:Z

    return v0
.end method

.method public isUnicodeCase()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lch/qos/logback/core/boolex/Matcher;->unicodeCase:Z

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 3
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/boolex/EvaluationException;
        }
    .end annotation

    .line 86
    iget-boolean v0, p0, Lch/qos/logback/core/boolex/Matcher;->start:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lch/qos/logback/core/boolex/Matcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 88
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    return v1

    .line 90
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    new-instance v0, Lch/qos/logback/core/boolex/EvaluationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Matcher ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/boolex/Matcher;->regex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/qos/logback/core/boolex/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCanonEq(Z)V
    .locals 0
    .param p1, "canonEq"    # Z

    .line 99
    iput-boolean p1, p0, Lch/qos/logback/core/boolex/Matcher;->canonEq:Z

    .line 100
    return-void
.end method

.method public setCaseSensitive(Z)V
    .locals 0
    .param p1, "caseSensitive"    # Z

    .line 107
    iput-boolean p1, p0, Lch/qos/logback/core/boolex/Matcher;->caseSensitive:Z

    .line 108
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lch/qos/logback/core/boolex/Matcher;->name:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setRegex(Ljava/lang/String;)V
    .locals 0
    .param p1, "regex"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lch/qos/logback/core/boolex/Matcher;->regex:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setUnicodeCase(Z)V
    .locals 0
    .param p1, "unicodeCase"    # Z

    .line 115
    iput-boolean p1, p0, Lch/qos/logback/core/boolex/Matcher;->unicodeCase:Z

    .line 116
    return-void
.end method

.method public start()V
    .locals 3

    .line 42
    iget-object v0, p0, Lch/qos/logback/core/boolex/Matcher;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 43
    const-string v0, "All Matcher objects must be named"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/boolex/Matcher;->addError(Ljava/lang/String;)V

    .line 44
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    .local v0, "code":I
    :try_start_0
    iget-boolean v1, p0, Lch/qos/logback/core/boolex/Matcher;->caseSensitive:Z

    if-nez v1, :cond_1

    .line 49
    or-int/lit8 v0, v0, 0x2

    .line 51
    :cond_1
    iget-boolean v1, p0, Lch/qos/logback/core/boolex/Matcher;->canonEq:Z

    if-eqz v1, :cond_2

    .line 52
    or-int/lit16 v0, v0, 0x80

    .line 54
    :cond_2
    iget-boolean v1, p0, Lch/qos/logback/core/boolex/Matcher;->unicodeCase:Z

    if-eqz v1, :cond_3

    .line 55
    or-int/lit8 v0, v0, 0x40

    .line 60
    :cond_3
    iget-object v1, p0, Lch/qos/logback/core/boolex/Matcher;->regex:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/core/boolex/Matcher;->pattern:Ljava/util/regex/Pattern;

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/qos/logback/core/boolex/Matcher;->start:Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v0    # "code":I
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "pse":Ljava/util/regex/PatternSyntaxException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to compile regex ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/boolex/Matcher;->regex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/boolex/Matcher;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .end local v0    # "pse":Ljava/util/regex/PatternSyntaxException;
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/boolex/Matcher;->start:Z

    .line 69
    return-void
.end method
