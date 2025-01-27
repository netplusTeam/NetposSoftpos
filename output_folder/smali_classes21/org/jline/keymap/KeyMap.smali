.class public Lorg/jline/keymap/KeyMap;
.super Ljava/lang/Object;
.source "KeyMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_AMBIGUOUS_TIMEOUT:J = 0x3e8L

.field public static final KEYMAP_LENGTH:I = 0x80

.field public static final KEYSEQ_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ambiguousTimeout:J

.field private anotherKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mapping:[Ljava/lang/Object;

.field private nomatch:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private unicode:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 246
    new-instance v0, Lorg/jline/keymap/KeyMap$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/jline/keymap/KeyMap$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/jline/keymap/KeyMap;->KEYSEQ_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/jline/keymap/KeyMap;->mapping:[Ljava/lang/Object;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/keymap/KeyMap;->anotherKey:Ljava/lang/Object;

    .line 38
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jline/keymap/KeyMap;->ambiguousTimeout:J

    return-void
.end method

.method public static alt(C)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # C

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u001b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static alt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Ljava/lang/String;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u001b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bind(Lorg/jline/keymap/KeyMap;Ljava/lang/CharSequence;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "keySeq"    # Ljava/lang/CharSequence;
    .param p3, "onlyIfNotBound"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jline/keymap/KeyMap<",
            "TT;>;",
            "Ljava/lang/CharSequence;",
            "TT;Z)V"
        }
    .end annotation

    .line 433
    .local p0, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    .local p2, "function":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 434
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 435
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 436
    .local v1, "c":C
    iget-object v2, p0, Lorg/jline/keymap/KeyMap;->mapping:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 437
    return-void

    .line 439
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 440
    iget-object v2, p0, Lorg/jline/keymap/KeyMap;->mapping:[Ljava/lang/Object;

    aget-object v2, v2, v1

    instance-of v2, v2, Lorg/jline/keymap/KeyMap;

    if-nez v2, :cond_1

    .line 441
    new-instance v2, Lorg/jline/keymap/KeyMap;

    invoke-direct {v2}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 442
    .local v2, "m":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    iget-object v3, p0, Lorg/jline/keymap/KeyMap;->mapping:[Ljava/lang/Object;

    aget-object v4, v3, v1

    iput-object v4, v2, Lorg/jline/keymap/KeyMap;->anotherKey:Ljava/lang/Object;

    .line 443
    aput-object v2, v3, v1

    .line 445
    .end local v2    # "m":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    :cond_1
    iget-object v2, p0, Lorg/jline/keymap/KeyMap;->mapping:[Ljava/lang/Object;

    aget-object v2, v2, v1

    move-object p0, v2

    check-cast p0, Lorg/jline/keymap/KeyMap;

    goto :goto_1

    .line 447
    :cond_2
    iget-object v2, p0, Lorg/jline/keymap/KeyMap;->mapping:[Ljava/lang/Object;

    aget-object v3, v2, v1

    instance-of v4, v3, Lorg/jline/keymap/KeyMap;

    if-eqz v4, :cond_3

    .line 448
    check-cast v3, Lorg/jline/keymap/KeyMap;

    iput-object p2, v3, Lorg/jline/keymap/KeyMap;->anotherKey:Ljava/lang/Object;

    goto :goto_1

    .line 450
    :cond_3
    aget-object v3, v2, v1

    .line 451
    .local v3, "op":Ljava/lang/Object;
    if-eqz p3, :cond_4

    if-nez v3, :cond_5

    .line 452
    :cond_4
    aput-object p2, v2, v1

    .line 434
    .end local v1    # "c":C
    .end local v3    # "op":Ljava/lang/Object;
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method public static ctrl(C)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # C

    .line 239
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_0

    invoke-static {}, Lorg/jline/keymap/KeyMap;->del()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static del()Ljava/lang/String;
    .locals 1

    .line 235
    const-string v0, "\u007f"

    return-object v0
.end method

.method public static display(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 44
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 45
    .local v3, "c":C
    const/16 v4, 0x20

    const/16 v5, 0x5e

    const/4 v6, 0x1

    if-ge v3, v4, :cond_0

    .line 46
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    add-int/lit8 v4, v3, 0x41

    sub-int/2addr v4, v6

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 48
    :cond_0
    const/16 v4, 0x7f

    if-ne v3, v4, :cond_1

    .line 49
    const-string v4, "^?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 50
    :cond_1
    const/16 v4, 0x5c

    if-eq v3, v5, :cond_4

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 52
    :cond_2
    const/16 v4, 0x80

    if-lt v3, v4, :cond_3

    .line 53
    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "\\u%04x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 55
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 51
    :cond_4
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .end local v3    # "c":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static doGetBoundKeys(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jline/keymap/KeyMap<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .line 304
    .local p0, "keyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    .local p2, "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    iget-object v0, p0, Lorg/jline/keymap/KeyMap;->anotherKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 305
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_0
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    iget-object v1, p0, Lorg/jline/keymap/KeyMap;->mapping:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 308
    aget-object v1, v1, v0

    instance-of v2, v1, Lorg/jline/keymap/KeyMap;

    if-eqz v2, :cond_1

    .line 309
    check-cast v1, Lorg/jline/keymap/KeyMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lorg/jline/keymap/KeyMap;->doGetBoundKeys(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 312
    :cond_1
    if-eqz v1, :cond_2

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/keymap/KeyMap;->mapping:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "c":I
    :cond_3
    return-void
.end method

.method public static esc()Ljava/lang/String;
    .locals 1

    .line 223
    const-string v0, "\u001b"

    return-object v0
.end method

.method public static key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;
    .locals 2
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p1, "capability"    # Lorg/jline/utils/InfoCmp$Capability;

    .line 243
    invoke-interface {p0, p1}, Lorg/jline/terminal/Terminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/jline/utils/Curses;->tputs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .line 247
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 248
    .local v0, "len1":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 249
    .local v1, "len2":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 250
    .local v2, "lim":I
    const/4 v3, 0x0

    .line 251
    .local v3, "k":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 252
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 253
    .local v4, "c1":C
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 254
    .local v5, "c2":C
    if-eq v4, v5, :cond_1

    .line 255
    sub-int v6, v0, v1

    .line 256
    .local v6, "l":I
    if-eqz v6, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    sub-int v7, v4, v5

    :goto_1
    return v7

    .line 258
    .end local v6    # "l":I
    :cond_1
    nop

    .end local v4    # "c1":C
    .end local v5    # "c2":C
    add-int/lit8 v3, v3, 0x1

    .line 259
    goto :goto_0

    .line 260
    :cond_2
    sub-int v4, v0, v1

    return v4
.end method

.method public static range(Ljava/lang/String;)Ljava/util/Collection;
    .locals 7
    .param p0, "range"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "keys":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 193
    return-object v2

    .line 195
    :cond_0
    const/4 v1, 0x0

    aget-object v3, v0, v1

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 196
    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 197
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 198
    return-object v2

    .line 201
    :cond_1
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 202
    aget-object v4, v0, v1

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "pfx":Ljava/lang/String;
    aget-object v5, v0, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 204
    return-object v2

    .line 207
    .end local v4    # "pfx":Ljava/lang/String;
    :cond_2
    const-string v4, ""

    .line 209
    .restart local v4    # "pfx":Ljava/lang/String;
    :cond_3
    aget-object v5, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 210
    .local v1, "c0":C
    aget-object v5, v0, v3

    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 211
    .local v3, "c1":C
    if-le v1, v3, :cond_4

    .line 212
    return-object v2

    .line 214
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v2, "seqs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move v5, v1

    .local v5, "c":C
    :goto_0
    if-gt v5, v3, :cond_5

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v6, v5, 0x1

    int-to-char v5, v6

    goto :goto_0

    .line 218
    .end local v5    # "c":C
    :cond_5
    return-object v2
.end method

.method public static translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 66
    .local v0, "c":C
    const/16 v2, 0x27

    if-eq v0, v2, :cond_0

    const/16 v2, 0x22

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_1

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 70
    .end local v0    # "c":C
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, "keySeq":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_14

    .line 72
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 73
    .local v3, "c":C
    const/16 v4, 0x5c

    const/16 v5, 0x7f

    const/16 v6, 0x3f

    if-ne v3, v4, :cond_10

    .line 74
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 75
    goto/16 :goto_b

    .line 77
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 78
    const/16 v4, 0x10

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_8

    .line 133
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    .line 134
    const/4 v3, 0x0

    .line 135
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    const/4 v6, 0x2

    if-ge v5, v6, :cond_5

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v2, v6, :cond_3

    .line 137
    goto :goto_2

    .line 139
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 140
    .local v6, "k":I
    if-gez v6, :cond_4

    .line 141
    goto :goto_2

    .line 143
    :cond_4
    mul-int/lit8 v7, v3, 0x10

    add-int/2addr v7, v6

    int-to-char v3, v7

    .line 135
    .end local v6    # "k":I
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 145
    .end local v5    # "j":I
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 146
    and-int/lit16 v4, v3, 0xff

    int-to-char v3, v4

    .line 147
    goto/16 :goto_8

    .line 105
    :sswitch_1
    const/16 v3, 0xb

    .line 106
    goto/16 :goto_8

    .line 149
    :sswitch_2
    add-int/lit8 v2, v2, 0x1

    .line 150
    const/4 v3, 0x0

    .line 151
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_3
    const/4 v6, 0x4

    if-ge v5, v6, :cond_8

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v2, v6, :cond_6

    .line 153
    goto :goto_4

    .line 155
    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 156
    .restart local v6    # "k":I
    if-gez v6, :cond_7

    .line 157
    goto :goto_4

    .line 159
    :cond_7
    mul-int/lit8 v7, v3, 0x10

    add-int/2addr v7, v6

    int-to-char v3, v7

    .line 151
    .end local v6    # "k":I
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 161
    .end local v5    # "j":I
    :cond_8
    :goto_4
    goto/16 :goto_8

    .line 102
    :sswitch_3
    const/16 v3, 0x9

    .line 103
    goto/16 :goto_8

    .line 99
    :sswitch_4
    const/16 v3, 0xd

    .line 100
    goto/16 :goto_8

    .line 96
    :sswitch_5
    const/16 v3, 0xa

    .line 97
    goto/16 :goto_8

    .line 93
    :sswitch_6
    const/16 v3, 0xc

    .line 94
    goto/16 :goto_8

    .line 86
    :sswitch_7
    const/16 v3, 0x7f

    .line 87
    goto :goto_8

    .line 83
    :sswitch_8
    const/16 v3, 0x8

    .line 84
    goto :goto_8

    .line 80
    :sswitch_9
    const/4 v3, 0x7

    .line 81
    goto :goto_8

    .line 108
    :sswitch_a
    const/16 v3, 0x5c

    .line 109
    goto :goto_8

    .line 90
    :sswitch_b
    const/16 v3, 0x1b

    .line 91
    goto :goto_8

    .line 163
    :sswitch_c
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_9

    .line 164
    goto :goto_8

    .line 166
    :cond_9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 167
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_b

    .line 168
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_a

    .line 169
    goto :goto_8

    .line 171
    :cond_a
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 173
    :cond_b
    if-ne v3, v6, :cond_c

    goto :goto_5

    :cond_c
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    and-int/lit8 v4, v4, 0x1f

    int-to-char v5, v4

    :goto_5
    move v3, v5

    goto :goto_8

    .line 118
    :sswitch_d
    const/4 v3, 0x0

    .line 119
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_6
    const/4 v5, 0x3

    if-ge v4, v5, :cond_f

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v2, v5, :cond_d

    .line 121
    goto :goto_7

    .line 123
    :cond_d
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 124
    .local v5, "k":I
    if-gez v5, :cond_e

    .line 125
    goto :goto_7

    .line 127
    :cond_e
    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v5

    int-to-char v3, v6

    .line 119
    .end local v5    # "k":I
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 129
    .end local v4    # "j":I
    :cond_f
    :goto_7
    add-int/lit8 v2, v2, -0x1

    .line 130
    and-int/lit16 v4, v3, 0xff

    int-to-char v3, v4

    .line 131
    nop

    .line 174
    :goto_8
    goto :goto_a

    .line 176
    :cond_10
    const/16 v4, 0x5e

    if-ne v3, v4, :cond_13

    .line 177
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v2, v7, :cond_11

    .line 178
    goto :goto_b

    .line 180
    :cond_11
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 181
    if-eq v3, v4, :cond_13

    .line 182
    if-ne v3, v6, :cond_12

    goto :goto_9

    :cond_12
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    and-int/lit8 v4, v4, 0x1f

    int-to-char v5, v4

    :goto_9
    move v3, v5

    .line 185
    :cond_13
    :goto_a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .end local v3    # "c":C
    add-int/2addr v2, v1

    goto/16 :goto_0

    .line 187
    :cond_14
    :goto_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_d
        0x31 -> :sswitch_d
        0x32 -> :sswitch_d
        0x33 -> :sswitch_d
        0x34 -> :sswitch_d
        0x35 -> :sswitch_d
        0x36 -> :sswitch_d
        0x37 -> :sswitch_d
        0x43 -> :sswitch_c
        0x45 -> :sswitch_b
        0x5c -> :sswitch_a
        0x61 -> :sswitch_9
        0x62 -> :sswitch_8
        0x64 -> :sswitch_7
        0x65 -> :sswitch_b
        0x66 -> :sswitch_6
        0x6e -> :sswitch_5
        0x72 -> :sswitch_4
        0x74 -> :sswitch_3
        0x75 -> :sswitch_2
        0x76 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method private static unbind(Lorg/jline/keymap/KeyMap;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 7
    .param p1, "keySeq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jline/keymap/KeyMap<",
            "TT;>;",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 391
    .local p0, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    const/4 v0, 0x0

    .line 392
    .local v0, "prev":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 393
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 394
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 395
    .local v3, "c":C
    iget-object v4, p0, Lorg/jline/keymap/KeyMap;->mapping:[Ljava/lang/Object;

    array-length v5, v4

    if-le v3, v5, :cond_0

    .line 396
    return-object v1

    .line 398
    :cond_0
    aget-object v4, v4, v3

    instance-of v5, v4, Lorg/jline/keymap/KeyMap;

    if-nez v5, :cond_1

    .line 399
    return-object v1

    .line 401
    :cond_1
    move-object v0, p0

    .line 402
    move-object p0, v4

    check-cast p0, Lorg/jline/keymap/KeyMap;

    .line 393
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    .end local v2    # "i":I
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 405
    .local v2, "c":C
    iget-object v3, p0, Lorg/jline/keymap/KeyMap;->mapping:[Ljava/lang/Object;

    array-length v4, v3

    if-le v2, v4, :cond_3

    .line 406
    return-object v1

    .line 408
    :cond_3
    aget-object v4, v3, v2

    instance-of v5, v4, Lorg/jline/keymap/KeyMap;

    if-eqz v5, :cond_4

    .line 409
    move-object v3, v4

    check-cast v3, Lorg/jline/keymap/KeyMap;

    .line 410
    .local v3, "sub":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<*>;"
    iget-object v4, v3, Lorg/jline/keymap/KeyMap;->anotherKey:Ljava/lang/Object;

    .line 411
    .local v4, "res":Ljava/lang/Object;
    iput-object v1, v3, Lorg/jline/keymap/KeyMap;->anotherKey:Ljava/lang/Object;

    .line 412
    return-object v4

    .line 414
    .end local v3    # "sub":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<*>;"
    .end local v4    # "res":Ljava/lang/Object;
    :cond_4
    aget-object v4, v3, v2

    .line 415
    .restart local v4    # "res":Ljava/lang/Object;
    aput-object v1, v3, v2

    .line 416
    const/4 v1, 0x0

    .line 417
    .local v1, "nb":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lorg/jline/keymap/KeyMap;->mapping:[Ljava/lang/Object;

    array-length v6, v5

    if-ge v3, v6, :cond_6

    .line 418
    aget-object v5, v5, v3

    if-eqz v5, :cond_5

    .line 419
    add-int/lit8 v1, v1, 0x1

    .line 417
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 422
    .end local v3    # "i":I
    :cond_6
    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 423
    iget-object v3, v0, Lorg/jline/keymap/KeyMap;->mapping:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lorg/jline/keymap/KeyMap;->anotherKey:Ljava/lang/Object;

    aput-object v6, v3, v5

    .line 425
    :cond_7
    return-object v4

    .line 428
    .end local v1    # "nb":I
    .end local v2    # "c":C
    .end local v4    # "res":Ljava/lang/Object;
    :cond_8
    return-object v1
.end method


# virtual methods
.method public bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "keySeq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 368
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    .local p1, "function":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_1

    .line 369
    if-nez p1, :cond_0

    .line 370
    invoke-virtual {p0, p2}, Lorg/jline/keymap/KeyMap;->unbind(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 372
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Lorg/jline/keymap/KeyMap;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/CharSequence;Ljava/lang/Object;Z)V

    .line 375
    :cond_1
    :goto_0
    return-void
.end method

.method public bind(Ljava/lang/Object;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 362
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    .local p1, "function":Ljava/lang/Object;, "TT;"
    .local p2, "keySeqs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 363
    .local v1, "keySeq":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 364
    .end local v1    # "keySeq":Ljava/lang/CharSequence;
    goto :goto_0

    .line 365
    :cond_0
    return-void
.end method

.method public varargs bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V
    .locals 3
    .param p2, "keySeqs"    # [Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 356
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    .local p1, "function":Ljava/lang/Object;, "TT;"
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 357
    .local v2, "keySeq":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 356
    .end local v2    # "keySeq":Ljava/lang/CharSequence;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_0
    return-void
.end method

.method public bindIfNotBound(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "keySeq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 350
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    .local p1, "function":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 351
    const/4 v0, 0x1

    invoke-static {p0, p2, p1, v0}, Lorg/jline/keymap/KeyMap;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/CharSequence;Ljava/lang/Object;Z)V

    .line 353
    :cond_0
    return-void
.end method

.method public getAmbiguousTimeout()J
    .locals 2

    .line 285
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    iget-wide v0, p0, Lorg/jline/keymap/KeyMap;->ambiguousTimeout:J

    return-wide v0
.end method

.method public getAnotherKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    iget-object v0, p0, Lorg/jline/keymap/KeyMap;->anotherKey:Ljava/lang/Object;

    return-object v0
.end method

.method public getBound(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 3
    .param p1, "keySeq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 344
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 345
    .local v0, "remaining":[I
    invoke-virtual {p0, p1, v0}, Lorg/jline/keymap/KeyMap;->getBound(Ljava/lang/CharSequence;[I)Ljava/lang/Object;

    move-result-object v1

    .line 346
    .local v1, "res":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    aget v2, v0, v2

    if-gtz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public getBound(Ljava/lang/CharSequence;[I)Ljava/lang/Object;
    .locals 5
    .param p1, "keySeq"    # Ljava/lang/CharSequence;
    .param p2, "remaining"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[I)TT;"
        }
    .end annotation

    .line 320
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 321
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 322
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 323
    .local v0, "c":C
    iget-object v2, p0, Lorg/jline/keymap/KeyMap;->mapping:[Ljava/lang/Object;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 324
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p1, v1, v2}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v2

    aput v2, p2, v1

    .line 325
    const/4 v1, 0x0

    return-object v1

    .line 327
    :cond_0
    aget-object v2, v2, v0

    instance-of v3, v2, Lorg/jline/keymap/KeyMap;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 328
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 329
    .local v1, "sub":Ljava/lang/CharSequence;
    iget-object v2, p0, Lorg/jline/keymap/KeyMap;->mapping:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lorg/jline/keymap/KeyMap;

    invoke-virtual {v2, v1, p2}, Lorg/jline/keymap/KeyMap;->getBound(Ljava/lang/CharSequence;[I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 330
    .end local v1    # "sub":Ljava/lang/CharSequence;
    :cond_1
    if-eqz v2, :cond_2

    .line 331
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v4

    aput v2, p2, v1

    .line 332
    iget-object v1, p0, Lorg/jline/keymap/KeyMap;->mapping:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .line 334
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    aput v2, p2, v1

    .line 335
    iget-object v1, p0, Lorg/jline/keymap/KeyMap;->anotherKey:Ljava/lang/Object;

    return-object v1

    .line 339
    .end local v0    # "c":C
    :cond_3
    iget-object v0, p0, Lorg/jline/keymap/KeyMap;->anotherKey:Ljava/lang/Object;

    return-object v0
.end method

.method public getBoundKeys()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 297
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lorg/jline/keymap/KeyMap;->KEYSEQ_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 298
    .local v0, "bound":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    const-string v1, ""

    invoke-static {p0, v1, v0}, Lorg/jline/keymap/KeyMap;->doGetBoundKeys(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/util/Map;)V

    .line 299
    return-object v0
.end method

.method public getNomatch()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    iget-object v0, p0, Lorg/jline/keymap/KeyMap;->nomatch:Ljava/lang/Object;

    return-object v0
.end method

.method public getUnicode()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 269
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    iget-object v0, p0, Lorg/jline/keymap/KeyMap;->unicode:Ljava/lang/Object;

    return-object v0
.end method

.method public setAmbiguousTimeout(J)V
    .locals 0
    .param p1, "ambiguousTimeout"    # J

    .line 289
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    iput-wide p1, p0, Lorg/jline/keymap/KeyMap;->ambiguousTimeout:J

    .line 290
    return-void
.end method

.method public setNomatch(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 281
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    .local p1, "nomatch":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/jline/keymap/KeyMap;->nomatch:Ljava/lang/Object;

    .line 282
    return-void
.end method

.method public setUnicode(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 273
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    .local p1, "unicode":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/jline/keymap/KeyMap;->unicode:Ljava/lang/Object;

    .line 274
    return-void
.end method

.method public unbind(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "keySeq"    # Ljava/lang/CharSequence;

    .line 384
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    if-eqz p1, :cond_0

    .line 385
    invoke-static {p0, p1}, Lorg/jline/keymap/KeyMap;->unbind(Lorg/jline/keymap/KeyMap;Ljava/lang/CharSequence;)Ljava/lang/Object;

    .line 387
    :cond_0
    return-void
.end method

.method public varargs unbind([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "keySeqs"    # [Ljava/lang/CharSequence;

    .line 378
    .local p0, "this":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 379
    .local v2, "keySeq":Ljava/lang/CharSequence;
    invoke-virtual {p0, v2}, Lorg/jline/keymap/KeyMap;->unbind(Ljava/lang/CharSequence;)V

    .line 378
    .end local v2    # "keySeq":Ljava/lang/CharSequence;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_0
    return-void
.end method
