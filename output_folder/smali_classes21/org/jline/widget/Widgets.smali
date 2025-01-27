.class public abstract Lorg/jline/widget/Widgets;
.super Ljava/lang/Object;
.source "Widgets.java"


# static fields
.field protected static final AP_BACKWARD_DELETE_CHAR:Ljava/lang/String; = "_autopair-backward-delete-char"

.field protected static final AP_INSERT:Ljava/lang/String; = "_autopair-insert"

.field public static final AUTOPAIR_TOGGLE:Ljava/lang/String; = "autopair-toggle"

.field public static final AUTOSUGGEST_TOGGLE:Ljava/lang/String; = "autosuggest-toggle"

.field public static final TAILTIP_PANE:Ljava/lang/String; = "tailtip-window"

.field public static final TAILTIP_TOGGLE:Ljava/lang/String; = "tailtip-toggle"

.field protected static final TT_ACCEPT_LINE:Ljava/lang/String; = "_tailtip-accept-line"


# instance fields
.field protected final reader:Lorg/jline/reader/LineReader;


# direct methods
.method public constructor <init>(Lorg/jline/reader/LineReader;)V
    .locals 0
    .param p1, "reader"    # Lorg/jline/reader/LineReader;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    .line 49
    return-void
.end method

.method private namedWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)Lorg/jline/reader/Widget;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "widget"    # Lorg/jline/reader/Widget;

    .line 61
    new-instance v0, Lorg/jline/widget/Widgets$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/jline/widget/Widgets$1;-><init>(Lorg/jline/widget/Widgets;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    return-object v0
.end method

.method private widget(Ljava/lang/String;)Lorg/jline/reader/Widget;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 133
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getBuiltinWidgets()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/Widget;

    .local v0, "out":Lorg/jline/reader/Widget;
    goto :goto_0

    .line 136
    .end local v0    # "out":Lorg/jline/reader/Widget;
    :cond_0
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getWidgets()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/Widget;

    .line 138
    .restart local v0    # "out":Lorg/jline/reader/Widget;
    :goto_0
    if-eqz v0, :cond_1

    .line 141
    return-object v0

    .line 139
    :cond_1
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widget: no such widget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addDescription(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;)V"
        }
    .end annotation

    .line 268
    .local p1, "desc":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v0

    invoke-static {v0}, Lorg/jline/utils/Status;->getStatus(Lorg/jline/terminal/Terminal;)Lorg/jline/utils/Status;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jline/utils/Status;->update(Ljava/util/List;)V

    .line 269
    return-void
.end method

.method public addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "widget"    # Lorg/jline/reader/Widget;

    .line 57
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getWidgets()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/jline/widget/Widgets;->namedWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)Lorg/jline/reader/Widget;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public aliasWidget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "orig"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getWidgets()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/jline/widget/Widgets;->widget(Ljava/lang/String;)Lorg/jline/reader/Widget;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public args()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getParser()Lorg/jline/reader/Parser;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jline/widget/Widgets;->buffer()Lorg/jline/reader/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jline/reader/Parser$ParseContext;->COMPLETE:Lorg/jline/reader/Parser$ParseContext;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/jline/reader/Parser;->parse(Ljava/lang/String;ILorg/jline/reader/Parser$ParseContext;)Lorg/jline/reader/ParsedLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public buffer()Lorg/jline/reader/Buffer;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getBuffer()Lorg/jline/reader/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public callWidget(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 79
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-toggle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0, p1}, Lorg/jline/reader/LineReader;->callWidget(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public clearDescription()V
    .locals 1

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jline/widget/Widgets;->initDescription(I)V

    .line 276
    return-void
.end method

.method public clearTailTip()V
    .locals 2

    .line 252
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/jline/reader/LineReader;->setTailTip(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public currChar()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getBuffer()Lorg/jline/reader/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public destroyDescription()V
    .locals 1

    .line 307
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/jline/widget/Widgets;->initDescription(I)V

    .line 308
    return-void
.end method

.method public executeWidget(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lorg/jline/widget/Widgets;->getKeyMap()Lorg/jline/keymap/KeyMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/keymap/KeyMap;->getBoundKeys()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x58

    invoke-static {v1}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/Binding;

    .line 91
    .local v0, "ref":Lorg/jline/reader/Binding;
    invoke-virtual {p0}, Lorg/jline/widget/Widgets;->getKeyMap()Lorg/jline/keymap/KeyMap;

    move-result-object v2

    new-instance v3, Lorg/jline/reader/Reference;

    invoke-direct {v3, p1}, Lorg/jline/reader/Reference;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-static {v1}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jline/reader/LineReader;->runMacro(Ljava/lang/String;)V

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/jline/widget/Widgets;->getKeyMap()Lorg/jline/keymap/KeyMap;

    move-result-object v2

    invoke-static {v1}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    return-void
.end method

.method public existsWidget(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 123
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jline/widget/Widgets;->widget(Ljava/lang/String;)Lorg/jline/reader/Widget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v0, 0x1

    return v0

    .line 125
    :catch_0
    move-exception v0

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyMap()Lorg/jline/keymap/KeyMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getKeyMaps()Ljava/util/Map;

    move-result-object v0

    const-string v1, "main"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/keymap/KeyMap;

    return-object v0
.end method

.method public getWidget(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0, p1}, Lorg/jline/widget/Widgets;->widget(Ljava/lang/String;)Lorg/jline/reader/Widget;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initDescription(I)V
    .locals 5
    .param p1, "size"    # I

    .line 283
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jline/utils/Status;->getStatus(Lorg/jline/terminal/Terminal;Z)Lorg/jline/utils/Status;

    move-result-object v0

    .line 284
    .local v0, "status":Lorg/jline/utils/Status;
    if-lez p1, :cond_3

    .line 285
    if-nez v0, :cond_0

    .line 286
    iget-object v1, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v1}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v1

    invoke-static {v1}, Lorg/jline/utils/Status;->getStatus(Lorg/jline/terminal/Terminal;)Lorg/jline/utils/Status;

    move-result-object v0

    .line 288
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jline/utils/Status;->setBorder(Z)V

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v1, "as":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 291
    new-instance v3, Lorg/jline/utils/AttributedString;

    const-string v4, ""

    invoke-direct {v3, v4}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Lorg/jline/widget/Widgets;->addDescription(Ljava/util/List;)V

    .line 294
    .end local v1    # "as":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    :cond_2
    goto :goto_1

    :cond_3
    if-eqz v0, :cond_2

    .line 295
    if-gez p1, :cond_4

    .line 296
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jline/utils/Status;->update(Ljava/util/List;)V

    goto :goto_1

    .line 298
    :cond_4
    invoke-virtual {v0}, Lorg/jline/utils/Status;->clear()V

    .line 301
    :goto_1
    return-void
.end method

.method public lastBinding()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getLastBinding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parser()Lorg/jline/reader/Parser;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getParser()Lorg/jline/reader/Parser;

    move-result-object v0

    return-object v0
.end method

.method public prevChar()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getBuffer()Lorg/jline/reader/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getBuffer()Lorg/jline/reader/Buffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method

.method public replaceBuffer(Lorg/jline/reader/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/jline/reader/Buffer;

    .line 173
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getBuffer()Lorg/jline/reader/Buffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jline/reader/Buffer;->copyFrom(Lorg/jline/reader/Buffer;)V

    .line 174
    return-void
.end method

.method public setErrorIndex(I)V
    .locals 1
    .param p1, "errorIndex"    # I

    .line 245
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getHighlighter()Lorg/jline/reader/Highlighter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jline/reader/Highlighter;->setErrorIndex(I)V

    .line 246
    return-void
.end method

.method public setErrorPattern(Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "errorPattern"    # Ljava/util/regex/Pattern;

    .line 237
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getHighlighter()Lorg/jline/reader/Highlighter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jline/reader/Highlighter;->setErrorPattern(Ljava/util/regex/Pattern;)V

    .line 238
    return-void
.end method

.method public setSuggestionType(Lorg/jline/reader/LineReader$SuggestionType;)V
    .locals 1
    .param p1, "type"    # Lorg/jline/reader/LineReader$SuggestionType;

    .line 260
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0, p1}, Lorg/jline/reader/LineReader;->setAutosuggestion(Lorg/jline/reader/LineReader$SuggestionType;)V

    .line 261
    return-void
.end method

.method public setTailTip(Ljava/lang/String;)V
    .locals 1
    .param p1, "tailTip"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0, p1}, Lorg/jline/reader/LineReader;->setTailTip(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public tailTip()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/jline/widget/Widgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getTailTip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
