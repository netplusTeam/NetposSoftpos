.class public Lorg/jline/reader/impl/ReaderUtils;
.super Ljava/lang/Object;
.source "ReaderUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "cand"    # Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jline/utils/Levenshtein;->distance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 74
    .local v0, "d1":I
    invoke-static {p0, p1}, Lorg/jline/utils/Levenshtein;->distance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 75
    .local v1, "d2":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 77
    .end local v0    # "d1":I
    .end local v1    # "d2":I
    :cond_0
    invoke-static {p0, p1}, Lorg/jline/utils/Levenshtein;->distance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public static getBoolean(Lorg/jline/reader/LineReader;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 28
    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/jline/reader/LineReader;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 29
    .local v0, "v":Ljava/lang/Object;
    :goto_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 31
    :cond_1
    if-eqz v0, :cond_4

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 34
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 33
    :goto_2
    return v2

    .line 36
    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    return p2
.end method

.method public static getInt(Lorg/jline/reader/LineReader;Ljava/lang/String;I)I
    .locals 3
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 40
    move v0, p2

    .line 41
    .local v0, "nb":I
    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/jline/reader/LineReader;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 42
    .local v1, "v":Ljava/lang/Object;
    :goto_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 43
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    return v2

    .line 44
    :cond_1
    if-eqz v1, :cond_2

    .line 45
    const/4 v0, 0x0

    .line 47
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 50
    goto :goto_1

    .line 48
    :catch_0
    move-exception v2

    .line 52
    :cond_2
    :goto_1
    return v0
.end method

.method public static getLong(Lorg/jline/reader/LineReader;Ljava/lang/String;J)J
    .locals 5
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 56
    move-wide v0, p2

    .line 57
    .local v0, "nb":J
    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/jline/reader/LineReader;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 58
    .local v2, "v":Ljava/lang/Object;
    :goto_0
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_1

    .line 59
    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    return-wide v3

    .line 60
    :cond_1
    if-eqz v2, :cond_2

    .line 61
    const-wide/16 v0, 0x0

    .line 63
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 66
    goto :goto_1

    .line 64
    :catch_0
    move-exception v3

    .line 68
    :cond_2
    :goto_1
    return-wide v0
.end method

.method public static getString(Lorg/jline/reader/LineReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 23
    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/jline/reader/LineReader;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 24
    .local v0, "v":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    return-object v1
.end method

.method public static isSet(Lorg/jline/reader/LineReader;Lorg/jline/reader/LineReader$Option;)Z
    .locals 1
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "option"    # Lorg/jline/reader/LineReader$Option;

    .line 19
    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/jline/reader/LineReader;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
