.class public Lch/qos/logback/core/util/DatePatternToRegexUtil;
.super Ljava/lang/Object;
.source "DatePatternToRegexUtil.java"


# instance fields
.field final datePattern:Ljava/lang/String;

.field final datePatternLength:I

.field final regexMapper:Lch/qos/logback/core/util/CharSequenceToRegexMapper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "datePattern"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lch/qos/logback/core/util/CharSequenceToRegexMapper;

    invoke-direct {v0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/util/DatePatternToRegexUtil;->regexMapper:Lch/qos/logback/core/util/CharSequenceToRegexMapper;

    .line 33
    iput-object p1, p0, Lch/qos/logback/core/util/DatePatternToRegexUtil;->datePattern:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lch/qos/logback/core/util/DatePatternToRegexUtil;->datePatternLength:I

    .line 35
    return-void
.end method

.method private tokenize()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/core/util/CharSequenceState;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "sequenceList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/util/CharSequenceState;>;"
    const/4 v1, 0x0

    .line 51
    .local v1, "lastCharSequenceState":Lch/qos/logback/core/util/CharSequenceState;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lch/qos/logback/core/util/DatePatternToRegexUtil;->datePatternLength:I

    if-ge v2, v3, :cond_2

    .line 52
    iget-object v3, p0, Lch/qos/logback/core/util/DatePatternToRegexUtil;->datePattern:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 53
    .local v3, "t":C
    if-eqz v1, :cond_1

    iget-char v4, v1, Lch/qos/logback/core/util/CharSequenceState;->c:C

    if-eq v4, v3, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {v1}, Lch/qos/logback/core/util/CharSequenceState;->incrementOccurrences()V

    goto :goto_2

    .line 54
    :cond_1
    :goto_1
    new-instance v4, Lch/qos/logback/core/util/CharSequenceState;

    invoke-direct {v4, v3}, Lch/qos/logback/core/util/CharSequenceState;-><init>(C)V

    move-object v1, v4

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v3    # "t":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method


# virtual methods
.method public toRegex()Ljava/lang/String;
    .locals 5

    .line 38
    invoke-direct {p0}, Lch/qos/logback/core/util/DatePatternToRegexUtil;->tokenize()Ljava/util/List;

    move-result-object v0

    .line 39
    .local v0, "charSequenceList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/util/CharSequenceState;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/util/CharSequenceState;

    .line 41
    .local v3, "seq":Lch/qos/logback/core/util/CharSequenceState;
    iget-object v4, p0, Lch/qos/logback/core/util/DatePatternToRegexUtil;->regexMapper:Lch/qos/logback/core/util/CharSequenceToRegexMapper;

    invoke-virtual {v4, v3}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->toRegex(Lch/qos/logback/core/util/CharSequenceState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .end local v3    # "seq":Lch/qos/logback/core/util/CharSequenceState;
    goto :goto_0

    .line 43
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
