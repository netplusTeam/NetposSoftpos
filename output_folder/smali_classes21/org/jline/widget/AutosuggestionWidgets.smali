.class public Lorg/jline/widget/AutosuggestionWidgets;
.super Lorg/jline/widget/Widgets;
.source "AutosuggestionWidgets.java"


# instance fields
.field private enabled:Z


# direct methods
.method public constructor <init>(Lorg/jline/reader/LineReader;)V
    .locals 2
    .param p1, "reader"    # Lorg/jline/reader/LineReader;

    .line 26
    invoke-direct {p0, p1}, Lorg/jline/widget/Widgets;-><init>(Lorg/jline/reader/LineReader;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/widget/AutosuggestionWidgets;->enabled:Z

    .line 27
    const-string v0, "_autosuggest-forward-char"

    invoke-virtual {p0, v0}, Lorg/jline/widget/AutosuggestionWidgets;->existsWidget(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lorg/jline/widget/AutosuggestionWidgets$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/jline/widget/AutosuggestionWidgets$$ExternalSyntheticLambda0;-><init>(Lorg/jline/widget/AutosuggestionWidgets;)V

    invoke-virtual {p0, v0, v1}, Lorg/jline/widget/AutosuggestionWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 31
    new-instance v0, Lorg/jline/widget/AutosuggestionWidgets$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/jline/widget/AutosuggestionWidgets$$ExternalSyntheticLambda1;-><init>(Lorg/jline/widget/AutosuggestionWidgets;)V

    const-string v1, "_autosuggest-end-of-line"

    invoke-virtual {p0, v1, v0}, Lorg/jline/widget/AutosuggestionWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 32
    new-instance v0, Lorg/jline/widget/AutosuggestionWidgets$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/jline/widget/AutosuggestionWidgets$$ExternalSyntheticLambda2;-><init>(Lorg/jline/widget/AutosuggestionWidgets;)V

    const-string v1, "_autosuggest-forward-word"

    invoke-virtual {p0, v1, v0}, Lorg/jline/widget/AutosuggestionWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 33
    new-instance v0, Lorg/jline/widget/AutosuggestionWidgets$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/jline/widget/AutosuggestionWidgets$$ExternalSyntheticLambda3;-><init>(Lorg/jline/widget/AutosuggestionWidgets;)V

    const-string v1, "autosuggest-toggle"

    invoke-virtual {p0, v1, v0}, Lorg/jline/widget/AutosuggestionWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 34
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AutosuggestionWidgets already created!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private accept(Ljava/lang/String;)Z
    .locals 3
    .param p1, "widget"    # Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lorg/jline/widget/AutosuggestionWidgets;->buffer()Lorg/jline/reader/Buffer;

    move-result-object v0

    .line 83
    .local v0, "buffer":Lorg/jline/reader/Buffer;
    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 84
    invoke-virtual {p0}, Lorg/jline/widget/AutosuggestionWidgets;->tailTip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jline/widget/AutosuggestionWidgets;->putString(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jline/widget/AutosuggestionWidgets;->callWidget(Ljava/lang/String;)V

    .line 88
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private customBindings()V
    .locals 2

    .line 95
    iget-boolean v0, p0, Lorg/jline/widget/AutosuggestionWidgets;->enabled:Z

    if-eqz v0, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    const-string v0, "_autosuggest-forward-char"

    const-string v1, "forward-char"

    invoke-virtual {p0, v0, v1}, Lorg/jline/widget/AutosuggestionWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "_autosuggest-end-of-line"

    const-string v1, "end-of-line"

    invoke-virtual {p0, v0, v1}, Lorg/jline/widget/AutosuggestionWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "_autosuggest-forward-word"

    const-string v1, "forward-word"

    invoke-virtual {p0, v0, v1}, Lorg/jline/widget/AutosuggestionWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/widget/AutosuggestionWidgets;->enabled:Z

    .line 102
    sget-object v0, Lorg/jline/reader/LineReader$SuggestionType;->HISTORY:Lorg/jline/reader/LineReader$SuggestionType;

    invoke-virtual {p0, v0}, Lorg/jline/widget/AutosuggestionWidgets;->setSuggestionType(Lorg/jline/reader/LineReader$SuggestionType;)V

    .line 103
    return-void
.end method

.method private defaultBindings()V
    .locals 2

    .line 106
    iget-boolean v0, p0, Lorg/jline/widget/AutosuggestionWidgets;->enabled:Z

    if-nez v0, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    const-string v0, ".forward-char"

    const-string v1, "forward-char"

    invoke-virtual {p0, v0, v1}, Lorg/jline/widget/AutosuggestionWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, ".end-of-line"

    const-string v1, "end-of-line"

    invoke-virtual {p0, v0, v1}, Lorg/jline/widget/AutosuggestionWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, ".forward-word"

    const-string v1, "forward-word"

    invoke-virtual {p0, v0, v1}, Lorg/jline/widget/AutosuggestionWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/widget/AutosuggestionWidgets;->enabled:Z

    .line 113
    sget-object v0, Lorg/jline/reader/LineReader$SuggestionType;->NONE:Lorg/jline/reader/LineReader$SuggestionType;

    invoke-virtual {p0, v0}, Lorg/jline/widget/AutosuggestionWidgets;->setSuggestionType(Lorg/jline/reader/LineReader$SuggestionType;)V

    .line 114
    return-void
.end method


# virtual methods
.method public autosuggestEndOfLine()Z
    .locals 1

    .line 68
    const-string v0, "end-of-line"

    invoke-direct {p0, v0}, Lorg/jline/widget/AutosuggestionWidgets;->accept(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public autosuggestForwardChar()Z
    .locals 1

    .line 64
    const-string v0, "forward-char"

    invoke-direct {p0, v0}, Lorg/jline/widget/AutosuggestionWidgets;->accept(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public disable()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/jline/widget/AutosuggestionWidgets;->defaultBindings()V

    .line 38
    return-void
.end method

.method public enable()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/jline/widget/AutosuggestionWidgets;->customBindings()V

    .line 42
    return-void
.end method

.method public partialAccept()Z
    .locals 6

    .line 47
    invoke-virtual {p0}, Lorg/jline/widget/AutosuggestionWidgets;->buffer()Lorg/jline/reader/Buffer;

    move-result-object v0

    .line 48
    .local v0, "buffer":Lorg/jline/reader/Buffer;
    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    const-string v3, "forward-word"

    if-ne v1, v2, :cond_0

    .line 49
    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    .line 50
    .local v1, "curPos":I
    invoke-virtual {p0}, Lorg/jline/widget/AutosuggestionWidgets;->tailTip()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 51
    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 52
    invoke-virtual {p0, v0}, Lorg/jline/widget/AutosuggestionWidgets;->replaceBuffer(Lorg/jline/reader/Buffer;)V

    .line 53
    invoke-virtual {p0, v3}, Lorg/jline/widget/AutosuggestionWidgets;->callWidget(Ljava/lang/String;)V

    .line 54
    new-instance v2, Lorg/jline/reader/impl/BufferImpl;

    invoke-direct {v2}, Lorg/jline/reader/impl/BufferImpl;-><init>()V

    .line 55
    .local v2, "newBuf":Lorg/jline/reader/Buffer;
    invoke-virtual {p0}, Lorg/jline/widget/AutosuggestionWidgets;->buffer()Lorg/jline/reader/Buffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/jline/widget/AutosuggestionWidgets;->buffer()Lorg/jline/reader/Buffer;

    move-result-object v5

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0, v2}, Lorg/jline/widget/AutosuggestionWidgets;->replaceBuffer(Lorg/jline/reader/Buffer;)V

    .line 57
    .end local v1    # "curPos":I
    .end local v2    # "newBuf":Lorg/jline/reader/Buffer;
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, v3}, Lorg/jline/widget/AutosuggestionWidgets;->callWidget(Ljava/lang/String;)V

    .line 60
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public toggleKeyBindings()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lorg/jline/widget/AutosuggestionWidgets;->enabled:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lorg/jline/widget/AutosuggestionWidgets;->defaultBindings()V

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0}, Lorg/jline/widget/AutosuggestionWidgets;->customBindings()V

    .line 77
    :goto_0
    iget-boolean v0, p0, Lorg/jline/widget/AutosuggestionWidgets;->enabled:Z

    return v0
.end method
