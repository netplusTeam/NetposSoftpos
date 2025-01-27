.class public Lorg/jline/widget/AutopairWidgets;
.super Lorg/jline/widget/Widgets;
.source "AutopairWidgets.java"


# static fields
.field private static final LBOUNDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RBOUNDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Binding;",
            ">;"
        }
    .end annotation
.end field

.field private enabled:Z

.field private final pairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jline/widget/AutopairWidgets;->LBOUNDS:Ljava/util/Map;

    .line 49
    const-string v1, "all"

    const-string v2, "[.:/\\!]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v2, "quotes"

    const-string v3, "[\\]})a-zA-Z0-9]"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v3, "spaces"

    const-string v4, "[^{(\\[]"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v4, "braces"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v6, "`"

    invoke-interface {v0, v6, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v7, "\""

    invoke-interface {v0, v7, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v8, "\'"

    invoke-interface {v0, v8, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jline/widget/AutopairWidgets;->RBOUNDS:Ljava/util/Map;

    .line 57
    const-string v9, "[\\[{(<,.:?/%$!a-zA-Z0-9]"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "[a-zA-Z0-9]"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "[^\\]})]"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-interface {v0, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/jline/reader/LineReader;)V
    .locals 1
    .param p1, "reader"    # Lorg/jline/reader/LineReader;

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jline/widget/AutopairWidgets;-><init>(Lorg/jline/reader/LineReader;Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/jline/reader/LineReader;Z)V
    .locals 6
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p2, "addCurlyBrackets"    # Z

    .line 71
    invoke-direct {p0, p1}, Lorg/jline/widget/Widgets;-><init>(Lorg/jline/reader/LineReader;)V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/widget/AutopairWidgets;->defaultBindings:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/widget/AutopairWidgets;->pairs:Ljava/util/Map;

    .line 40
    const-string v1, "`"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "\'"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "\""

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "["

    const-string v2, "]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "("

    const-string v2, ")"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, " "

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "_autopair-insert"

    invoke-virtual {p0, v1}, Lorg/jline/widget/AutopairWidgets;->existsWidget(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 75
    if-eqz p2, :cond_0

    .line 76
    const-string v2, "{"

    const-string v3, "}"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    new-instance v2, Lorg/jline/widget/AutopairWidgets$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/jline/widget/AutopairWidgets$$ExternalSyntheticLambda0;-><init>(Lorg/jline/widget/AutopairWidgets;)V

    invoke-virtual {p0, v1, v2}, Lorg/jline/widget/AutopairWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 79
    new-instance v1, Lorg/jline/widget/AutopairWidgets$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/jline/widget/AutopairWidgets$$ExternalSyntheticLambda1;-><init>(Lorg/jline/widget/AutopairWidgets;)V

    const-string v2, "_autopair-close"

    invoke-virtual {p0, v2, v1}, Lorg/jline/widget/AutopairWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 80
    new-instance v1, Lorg/jline/widget/AutopairWidgets$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/jline/widget/AutopairWidgets$$ExternalSyntheticLambda2;-><init>(Lorg/jline/widget/AutopairWidgets;)V

    const-string v2, "_autopair-backward-delete-char"

    invoke-virtual {p0, v2, v1}, Lorg/jline/widget/AutopairWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 81
    new-instance v1, Lorg/jline/widget/AutopairWidgets$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/jline/widget/AutopairWidgets$$ExternalSyntheticLambda3;-><init>(Lorg/jline/widget/AutopairWidgets;)V

    const-string v2, "autopair-toggle"

    invoke-virtual {p0, v2, v1}, Lorg/jline/widget/AutopairWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 83
    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->getKeyMap()Lorg/jline/keymap/KeyMap;

    move-result-object v1

    .line 84
    .local v1, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 85
    .local v2, "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/jline/widget/AutopairWidgets;->defaultBindings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Lorg/jline/keymap/KeyMap;->getBound(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jline/reader/Binding;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    iget-object v3, p0, Lorg/jline/widget/AutopairWidgets;->defaultBindings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Lorg/jline/keymap/KeyMap;->getBound(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jline/reader/Binding;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v2    # "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 90
    :cond_2
    return-void

    .line 73
    .end local v1    # "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AutopairWidgets already created!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private balanced(Ljava/lang/String;)Z
    .locals 12
    .param p1, "d"    # Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "out":Z
    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->buffer()Lorg/jline/reader/Buffer;

    move-result-object v1

    .line 221
    .local v1, "buf":Lorg/jline/reader/Buffer;
    invoke-interface {v1}, Lorg/jline/reader/Buffer;->upToCursor()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "lbuf":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v1, v3}, Lorg/jline/reader/Buffer;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "rbuf":Ljava/lang/String;
    iget-object v4, p0, Lorg/jline/widget/AutopairWidgets;->pairs:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "\\"

    if-eqz v4, :cond_0

    move-object v4, p1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "regx1":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lorg/jline/widget/AutopairWidgets;->pairs:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, p0, Lorg/jline/widget/AutopairWidgets;->pairs:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jline/widget/AutopairWidgets;->pairs:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, "regx2":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ""

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v6, v8

    .line 226
    .local v6, "llen":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    .line 227
    .local v8, "rlen":I
    if-nez v6, :cond_2

    if-nez v8, :cond_2

    .line 228
    const/4 v0, 0x1

    goto :goto_2

    .line 229
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_3

    .line 230
    const/4 v0, 0x1

    goto :goto_2

    .line 231
    :cond_3
    iget-object v9, p0, Lorg/jline/widget/AutopairWidgets;->pairs:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 232
    if-eq v6, v8, :cond_4

    add-int v7, v6, v8

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_7

    .line 233
    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    .line 236
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    .line 237
    .local v9, "l2len":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v10, v7

    .line 238
    .local v10, "r2len":I
    sub-int v7, v6, v9

    .line 239
    .local v7, "ltotal":I
    sub-int v11, v8, v10

    .line 240
    .local v11, "rtotal":I
    if-gez v7, :cond_6

    .line 241
    const/4 v7, 0x0

    .line 243
    :cond_6
    if-lt v7, v11, :cond_7

    .line 244
    const/4 v0, 0x1

    .line 247
    .end local v7    # "ltotal":I
    .end local v9    # "l2len":I
    .end local v10    # "r2len":I
    .end local v11    # "rtotal":I
    :cond_7
    :goto_2
    return v0
.end method

.method private boundary(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "lb"    # Ljava/lang/String;
    .param p2, "rb"    # Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->prevChar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->currChar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0
.end method

.method private canDelete(Ljava/lang/String;)Z
    .locals 1
    .param p1, "d"    # Ljava/lang/String;

    .line 215
    invoke-direct {p0, p1}, Lorg/jline/widget/AutopairWidgets;->balanced(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private canPair(Ljava/lang/String;)Z
    .locals 3
    .param p1, "d"    # Ljava/lang/String;

    .line 203
    invoke-direct {p0, p1}, Lorg/jline/widget/AutopairWidgets;->balanced(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lorg/jline/widget/AutopairWidgets;->nexToBoundary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->prevChar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->currChar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 206
    :cond_2
    return v1
.end method

.method private canSkip(Ljava/lang/String;)Z
    .locals 3
    .param p1, "d"    # Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lorg/jline/widget/AutopairWidgets;->pairs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->currChar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0, p1}, Lorg/jline/widget/AutopairWidgets;->balanced(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 210
    :goto_0
    return v1
.end method

.method private customBindings()V
    .locals 7

    .line 162
    invoke-direct {p0}, Lorg/jline/widget/AutopairWidgets;->tailtipEnabled()Z

    move-result v0

    .line 163
    .local v0, "ttActive":Z
    const-string v1, "tailtip-toggle"

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0, v1}, Lorg/jline/widget/AutopairWidgets;->callWidget(Ljava/lang/String;)V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->getKeyMap()Lorg/jline/keymap/KeyMap;

    move-result-object v2

    .line 167
    .local v2, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    iget-object v3, p0, Lorg/jline/widget/AutopairWidgets;->pairs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 168
    .local v4, "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lorg/jline/reader/Reference;

    const-string v6, "_autopair-insert"

    invoke-direct {v5, v6}, Lorg/jline/reader/Reference;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5, v6}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 169
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 170
    new-instance v5, Lorg/jline/reader/Reference;

    const-string v6, "_autopair-close"

    invoke-direct {v5, v6}, Lorg/jline/reader/Reference;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5, v6}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 172
    .end local v4    # "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 173
    :cond_2
    const-string v3, "_autopair-backward-delete-char"

    const-string v4, "backward-delete-char"

    invoke-virtual {p0, v3, v4}, Lorg/jline/widget/AutopairWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    if-eqz v0, :cond_3

    .line 175
    invoke-virtual {p0, v1}, Lorg/jline/widget/AutopairWidgets;->callWidget(Ljava/lang/String;)V

    .line 177
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jline/widget/AutopairWidgets;->enabled:Z

    .line 178
    return-void
.end method

.method private defaultBindings()V
    .locals 5

    .line 181
    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->getKeyMap()Lorg/jline/keymap/KeyMap;

    move-result-object v0

    .line 182
    .local v0, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    iget-object v1, p0, Lorg/jline/widget/AutopairWidgets;->pairs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 183
    .local v2, "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/jline/widget/AutopairWidgets;->defaultBindings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/reader/Binding;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3, v4}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 184
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    iget-object v3, p0, Lorg/jline/widget/AutopairWidgets;->defaultBindings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/reader/Binding;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3, v4}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 187
    .end local v2    # "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 188
    :cond_1
    const-string v1, ".backward-delete-char"

    const-string v2, "backward-delete-char"

    invoke-virtual {p0, v1, v2}, Lorg/jline/widget/AutopairWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lorg/jline/widget/AutopairWidgets;->tailtipEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    const-string v1, "tailtip-toggle"

    invoke-virtual {p0, v1}, Lorg/jline/widget/AutopairWidgets;->callWidget(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, v1}, Lorg/jline/widget/AutopairWidgets;->callWidget(Ljava/lang/String;)V

    .line 193
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jline/widget/AutopairWidgets;->enabled:Z

    .line 194
    return-void
.end method

.method private nexToBoundary(Ljava/lang/String;)Z
    .locals 6
    .param p1, "d"    # Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v0, "bk":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "all"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    const-string v1, "[\'\"`]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 260
    const-string v1, "quotes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_0
    const-string v1, "[{\\[(<]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    const-string v1, "braces"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_2

    .line 264
    const-string v1, "spaces"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_2
    :goto_0
    sget-object v1, Lorg/jline/widget/AutopairWidgets;->LBOUNDS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/jline/widget/AutopairWidgets;->RBOUNDS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 267
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 270
    .local v3, "k":Ljava/lang/String;
    sget-object v4, Lorg/jline/widget/AutopairWidgets;->LBOUNDS:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lorg/jline/widget/AutopairWidgets;->RBOUNDS:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lorg/jline/widget/AutopairWidgets;->boundary(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 271
    const/4 v1, 0x1

    return v1

    .line 273
    .end local v3    # "k":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 274
    :cond_5
    return v2
.end method

.method private tailtipEnabled()Z
    .locals 2

    .line 199
    const-string v0, "accept-line"

    invoke-virtual {p0, v0}, Lorg/jline/widget/AutopairWidgets;->getWidget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_tailtip-accept-line"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public autopairClose()Z
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/jline/widget/AutopairWidgets;->pairs:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->lastBinding()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->currChar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->lastBinding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "forward-char"

    invoke-virtual {p0, v0}, Lorg/jline/widget/AutopairWidgets;->callWidget(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_0
    const-string v0, "self-insert"

    invoke-virtual {p0, v0}, Lorg/jline/widget/AutopairWidgets;->callWidget(Ljava/lang/String;)V

    .line 137
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public autopairDelete()Z
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/jline/widget/AutopairWidgets;->pairs:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->prevChar()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jline/widget/AutopairWidgets;->pairs:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->prevChar()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->currChar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->prevChar()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jline/widget/AutopairWidgets;->canDelete(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "delete-char"

    invoke-virtual {p0, v0}, Lorg/jline/widget/AutopairWidgets;->callWidget(Ljava/lang/String;)V

    .line 145
    :cond_0
    const-string v0, "backward-delete-char"

    invoke-virtual {p0, v0}, Lorg/jline/widget/AutopairWidgets;->callWidget(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public autopairInsert()Z
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/jline/widget/AutopairWidgets;->pairs:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->lastBinding()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "self-insert"

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->lastBinding()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jline/widget/AutopairWidgets;->canSkip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "forward-char"

    invoke-virtual {p0, v0}, Lorg/jline/widget/AutopairWidgets;->callWidget(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->lastBinding()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jline/widget/AutopairWidgets;->canPair(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0, v1}, Lorg/jline/widget/AutopairWidgets;->callWidget(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/jline/widget/AutopairWidgets;->pairs:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->lastBinding()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jline/widget/AutopairWidgets;->putString(Ljava/lang/String;)V

    .line 120
    const-string v0, "backward-char"

    invoke-virtual {p0, v0}, Lorg/jline/widget/AutopairWidgets;->callWidget(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p0, v1}, Lorg/jline/widget/AutopairWidgets;->callWidget(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0, v1}, Lorg/jline/widget/AutopairWidgets;->callWidget(Ljava/lang/String;)V

    .line 127
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public disable()V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lorg/jline/widget/AutopairWidgets;->enabled:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->toggle()Z

    .line 102
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lorg/jline/widget/AutopairWidgets;->enabled:Z

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->toggle()Z

    .line 96
    :cond_0
    return-void
.end method

.method public toggle()Z
    .locals 2

    .line 105
    iget-boolean v0, p0, Lorg/jline/widget/AutopairWidgets;->enabled:Z

    .line 106
    .local v0, "before":Z
    invoke-virtual {p0}, Lorg/jline/widget/AutopairWidgets;->toggleKeyBindings()Z

    .line 107
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public toggleKeyBindings()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lorg/jline/widget/AutopairWidgets;->enabled:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lorg/jline/widget/AutopairWidgets;->defaultBindings()V

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0}, Lorg/jline/widget/AutopairWidgets;->customBindings()V

    .line 155
    :goto_0
    iget-boolean v0, p0, Lorg/jline/widget/AutopairWidgets;->enabled:Z

    return v0
.end method
