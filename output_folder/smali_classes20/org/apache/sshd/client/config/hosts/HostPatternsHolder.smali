.class public abstract Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;
.super Ljava/lang/Object;
.source "HostPatternsHolder.java"


# static fields
.field public static final ALL_HOSTS_PATTERN:Ljava/lang/String;

.field public static final NEGATION_CHAR_PATTERN:C = '!'

.field public static final NON_STANDARD_PORT_PATTERN_ENCLOSURE_END_DELIM:C = ']'

.field public static final NON_STANDARD_PORT_PATTERN_ENCLOSURE_START_DELIM:C = '['

.field public static final PATTERN_CHARS:Ljava/lang/String;

.field public static final PORT_VALUE_DELIMITER:C = ':'

.field public static final SINGLE_CHAR_PATTERN:C = '?'

.field public static final WILDCARD_PATTERN:C = '*'


# instance fields
.field private patterns:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/config/hosts/HostPatternValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const/16 v0, 0x2a

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;->ALL_HOSTS_PATTERN:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;->PATTERN_CHARS:Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0x2as
        0x3fs
        0x21s
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;->patterns:Ljava/util/Collection;

    .line 74
    return-void
.end method

.method public static findMatchingEntries(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;"
        }
    .end annotation

    .line 145
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 150
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    .line 151
    .local v2, "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->isHostMatch(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 152
    goto :goto_0

    .line 155
    :cond_1
    if-nez v0, :cond_2

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v3

    .line 159
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v2    # "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    goto :goto_0

    .line 162
    :cond_3
    if-nez v0, :cond_4

    .line 163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 165
    :cond_4
    return-object v0

    .line 146
    .end local v0    # "matches":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    :cond_5
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findMatchingEntries(Ljava/lang/String;[Lorg/apache/sshd/client/config/hosts/HostConfigEntry;)Ljava/util/List;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "entries"    # [Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;->findMatchingEntries(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 129
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isHostMatch(Ljava/lang/String;ILjava/util/Collection;)Z
    .locals 6
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/config/hosts/HostPatternValue;",
            ">;)Z"
        }
    .end annotation

    .line 170
    .local p2, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/config/hosts/HostPatternValue;>;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 171
    return v1

    .line 174
    :cond_0
    const/4 v0, 0x0

    .line 175
    .local v0, "matchFound":Z
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/client/config/hosts/HostPatternValue;

    .line 176
    .local v3, "pv":Lorg/apache/sshd/client/config/hosts/HostPatternValue;
    invoke-virtual {v3}, Lorg/apache/sshd/client/config/hosts/HostPatternValue;->isNegated()Z

    move-result v4

    .line 180
    .local v4, "negated":Z
    if-eqz v0, :cond_1

    if-nez v4, :cond_1

    .line 181
    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v3}, Lorg/apache/sshd/client/config/hosts/HostPatternValue;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-static {p0, v5}, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;->isHostMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 185
    goto :goto_0

    .line 194
    :cond_2
    if-eqz v4, :cond_3

    .line 195
    return v1

    .line 198
    :cond_3
    invoke-virtual {v3}, Lorg/apache/sshd/client/config/hosts/HostPatternValue;->getPort()I

    move-result v5

    .line 199
    .local v5, "pvPort":I
    if-eqz v5, :cond_4

    if-eqz p1, :cond_4

    if-eq v5, p1, :cond_4

    .line 200
    goto :goto_0

    .line 203
    :cond_4
    const/4 v0, 0x1

    .line 204
    .end local v3    # "pv":Lorg/apache/sshd/client/config/hosts/HostPatternValue;
    .end local v4    # "negated":Z
    .end local v5    # "pvPort":I
    goto :goto_0

    .line 206
    :cond_5
    return v0
.end method

.method public static isHostMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 217
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 222
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1

    .line 218
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSpecificHostPattern(Ljava/lang/String;)Z
    .locals 4
    .param p0, "pattern"    # Ljava/lang/String;

    .line 104
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    return v1

    .line 108
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget-object v2, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;->PATTERN_CHARS:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 110
    .local v2, "ch":C
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 111
    return v1

    .line 108
    .end local v2    # "ch":C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidPatternChar(C)Z
    .locals 3
    .param p0, "ch"    # C

    .line 326
    const/4 v0, 0x0

    const/16 v1, 0x20

    if-le p0, v1, :cond_6

    const/16 v1, 0x7e

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    const/16 v1, 0x61

    const/4 v2, 0x1

    if-lt p0, v1, :cond_1

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_1

    .line 330
    return v2

    .line 332
    :cond_1
    const/16 v1, 0x41

    if-lt p0, v1, :cond_2

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_2

    .line 333
    return v2

    .line 335
    :cond_2
    const/16 v1, 0x30

    if-lt p0, v1, :cond_3

    const/16 v1, 0x39

    if-gt p0, v1, :cond_3

    .line 336
    return v2

    .line 338
    :cond_3
    const-string v1, "-_."

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    .line 339
    return v2

    .line 341
    :cond_4
    sget-object v1, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;->PATTERN_CHARS:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_5

    move v0, v2

    :cond_5
    return v0

    .line 327
    :cond_6
    :goto_0
    return v0
.end method

.method public static parsePatterns(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/HostPatternValue;",
            ">;"
        }
    .end annotation

    .line 230
    .local p0, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/CharSequence;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/client/config/hosts/HostPatternValue;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 236
    .local v2, "p":Ljava/lang/CharSequence;
    invoke-static {v2}, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;->toPattern(Ljava/lang/CharSequence;)Lorg/apache/sshd/client/config/hosts/HostPatternValue;

    move-result-object v3

    const-string v4, "No pattern for %s"

    invoke-static {v3, v4, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v2    # "p":Ljava/lang/CharSequence;
    goto :goto_0

    .line 239
    :cond_1
    return-object v0
.end method

.method public static varargs parsePatterns([Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .param p0, "patterns"    # [Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/HostPatternValue;",
            ">;"
        }
    .end annotation

    .line 226
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;->parsePatterns(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static toPattern(Ljava/lang/CharSequence;)Lorg/apache/sshd/client/config/hosts/HostPatternValue;
    .locals 12
    .param p0, "patternString"    # Ljava/lang/CharSequence;

    .line 256
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->replaceWhitespaceAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "pattern":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    return-object v0

    .line 261
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 262
    .local v0, "patternLen":I
    const/4 v2, 0x0

    .line 264
    .local v2, "port":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 265
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v5, v6, :cond_5

    .line 266
    const/16 v5, 0x3a

    invoke-static {v1, v5}, Lorg/apache/sshd/common/util/GenericUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    .line 267
    .local v5, "pos":I
    if-lez v5, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    const-string v9, "Missing non-standard port value delimiter in %s"

    invoke-static {v6, v9, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 268
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_2

    move v6, v8

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    const-string v9, "Missing non-standard port value number in %s"

    invoke-static {v6, v9, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 269
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x5d

    if-ne v6, v9, :cond_3

    move v6, v8

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_2
    const-string v9, "Invalid non-standard port value host pattern enclosure delimiters in %s"

    invoke-static {v6, v9, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 272
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 273
    .local v6, "csPort":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 274
    if-lez v2, :cond_4

    const v9, 0xffff

    if-gt v2, v9, :cond_4

    move v9, v8

    goto :goto_3

    :cond_4
    move v9, v4

    :goto_3
    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    aput-object v1, v10, v8

    const-string v11, "Invalid non-start port value (%d) in %s"

    invoke-static {v9, v11, v10}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 276
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 280
    .end local v5    # "pos":I
    .end local v6    # "csPort":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    .line 281
    .local v5, "negated":Z
    const/4 v6, 0x0

    .local v6, "curPos":I
    :goto_4
    if-ge v6, v0, :cond_7

    .line 282
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 283
    .local v9, "ch":C
    invoke-static {v9}, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;->isValidPatternChar(C)Z

    move-result v10

    const-string v11, "Invalid host pattern char in %s"

    invoke-static {v10, v11, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 285
    sparse-switch v9, :sswitch_data_0

    .line 301
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 290
    :sswitch_0
    const/16 v10, 0x2e

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    goto :goto_6

    .line 287
    :sswitch_1
    const/16 v10, 0x5c

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    goto :goto_6

    .line 293
    :sswitch_2
    const-string v10, ".*"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    goto :goto_6

    .line 296
    :sswitch_3
    xor-int/lit8 v10, v5, 0x1

    const-string v11, "Double negation in %s"

    invoke-static {v10, v11, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 297
    if-nez v6, :cond_6

    move v10, v8

    goto :goto_5

    :cond_6
    move v10, v4

    :goto_5
    const-string v11, "Negation must be 1st char: %s"

    invoke-static {v10, v11, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 298
    const/4 v5, 0x1

    .line 299
    nop

    .line 281
    .end local v9    # "ch":C
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 305
    .end local v6    # "curPos":I
    :cond_7
    new-instance v4, Lorg/apache/sshd/client/config/hosts/HostPatternValue;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-direct {v4, v6, v2, v5}, Lorg/apache/sshd/client/config/hosts/HostPatternValue;-><init>(Ljava/util/regex/Pattern;IZ)V

    return-object v4

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_3
        0x2a -> :sswitch_2
        0x2e -> :sswitch_1
        0x3f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getPatterns()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/config/hosts/HostPatternValue;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;->patterns:Ljava/util/Collection;

    return-object v0
.end method

.method public isHostMatch(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 93
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;->getPatterns()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;->isHostMatch(Ljava/lang/String;ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setPatterns(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/config/hosts/HostPatternValue;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/config/hosts/HostPatternValue;>;"
    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;->patterns:Ljava/util/Collection;

    .line 82
    return-void
.end method
