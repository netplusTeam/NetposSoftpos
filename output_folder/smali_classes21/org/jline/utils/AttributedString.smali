.class public Lorg/jline/utils/AttributedString;
.super Lorg/jline/utils/AttributedCharSequence;
.source "AttributedString.java"


# static fields
.field public static final EMPTY:Lorg/jline/utils/AttributedString;

.field public static final NEWLINE:Lorg/jline/utils/AttributedString;


# instance fields
.field final buffer:[C

.field final end:I

.field final start:I

.field final style:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lorg/jline/utils/AttributedString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lorg/jline/utils/AttributedString;->EMPTY:Lorg/jline/utils/AttributedString;

    .line 32
    new-instance v0, Lorg/jline/utils/AttributedString;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lorg/jline/utils/AttributedString;->NEWLINE:Lorg/jline/utils/AttributedString;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;IILorg/jline/utils/AttributedStyle;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;IILorg/jline/utils/AttributedStyle;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILorg/jline/utils/AttributedStyle;)V
    .locals 8
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "s"    # Lorg/jline/utils/AttributedStyle;

    .line 46
    invoke-direct {p0}, Lorg/jline/utils/AttributedCharSequence;-><init>()V

    .line 47
    if-lt p3, p2, :cond_7

    .line 50
    instance-of v0, p1, Lorg/jline/utils/AttributedString;

    if-eqz v0, :cond_2

    .line 51
    move-object v0, p1

    check-cast v0, Lorg/jline/utils/AttributedString;

    .line 52
    .local v0, "as":Lorg/jline/utils/AttributedString;
    iget-object v1, v0, Lorg/jline/utils/AttributedString;->buffer:[C

    iput-object v1, p0, Lorg/jline/utils/AttributedString;->buffer:[C

    .line 53
    if-eqz p4, :cond_1

    .line 54
    iget-object v1, v0, Lorg/jline/utils/AttributedString;->style:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, p0, Lorg/jline/utils/AttributedString;->style:[J

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jline/utils/AttributedString;->style:[J

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 56
    aget-wide v3, v2, v1

    invoke-virtual {p4}, Lorg/jline/utils/AttributedStyle;->getMask()J

    move-result-wide v5

    not-long v5, v5

    and-long/2addr v3, v5

    invoke-virtual {p4}, Lorg/jline/utils/AttributedStyle;->getStyle()J

    move-result-wide v5

    or-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 59
    :cond_1
    iget-object v1, v0, Lorg/jline/utils/AttributedString;->style:[J

    iput-object v1, p0, Lorg/jline/utils/AttributedString;->style:[J

    .line 61
    :goto_1
    iget v1, v0, Lorg/jline/utils/AttributedString;->start:I

    add-int/2addr v1, p2

    iput v1, p0, Lorg/jline/utils/AttributedString;->start:I

    .line 62
    iget v1, v0, Lorg/jline/utils/AttributedString;->start:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/jline/utils/AttributedString;->end:I

    .line 63
    .end local v0    # "as":Lorg/jline/utils/AttributedString;
    goto :goto_4

    :cond_2
    instance-of v0, p1, Lorg/jline/utils/AttributedStringBuilder;

    if-eqz v0, :cond_4

    .line 64
    move-object v0, p1

    check-cast v0, Lorg/jline/utils/AttributedStringBuilder;

    .line 65
    .local v0, "asb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {v0, p2, p3}, Lorg/jline/utils/AttributedStringBuilder;->subSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v1

    .line 66
    .local v1, "as":Lorg/jline/utils/AttributedString;
    iget-object v2, v1, Lorg/jline/utils/AttributedString;->buffer:[C

    iput-object v2, p0, Lorg/jline/utils/AttributedString;->buffer:[C

    .line 67
    iget-object v2, v1, Lorg/jline/utils/AttributedString;->style:[J

    iput-object v2, p0, Lorg/jline/utils/AttributedString;->style:[J

    .line 68
    if-eqz p4, :cond_3

    .line 69
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lorg/jline/utils/AttributedString;->style:[J

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 70
    aget-wide v4, v3, v2

    invoke-virtual {p4}, Lorg/jline/utils/AttributedStyle;->getMask()J

    move-result-wide v6

    not-long v6, v6

    and-long/2addr v4, v6

    invoke-virtual {p4}, Lorg/jline/utils/AttributedStyle;->getStyle()J

    move-result-wide v6

    or-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 73
    .end local v2    # "i":I
    :cond_3
    iget v2, v1, Lorg/jline/utils/AttributedString;->start:I

    iput v2, p0, Lorg/jline/utils/AttributedString;->start:I

    .line 74
    iget v2, v1, Lorg/jline/utils/AttributedString;->end:I

    iput v2, p0, Lorg/jline/utils/AttributedString;->end:I

    .line 75
    .end local v0    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .end local v1    # "as":Lorg/jline/utils/AttributedString;
    goto :goto_4

    .line 76
    :cond_4
    sub-int v0, p3, p2

    .line 77
    .local v0, "l":I
    new-array v1, v0, [C

    iput-object v1, p0, Lorg/jline/utils/AttributedString;->buffer:[C

    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_5

    .line 79
    iget-object v2, p0, Lorg/jline/utils/AttributedString;->buffer:[C

    add-int v3, p2, v1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v2, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 81
    .end local v1    # "i":I
    :cond_5
    new-array v1, v0, [J

    iput-object v1, p0, Lorg/jline/utils/AttributedString;->style:[J

    .line 82
    if-eqz p4, :cond_6

    .line 83
    invoke-virtual {p4}, Lorg/jline/utils/AttributedStyle;->getStyle()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 85
    :cond_6
    const/4 v1, 0x0

    iput v1, p0, Lorg/jline/utils/AttributedString;->start:I

    .line 86
    iput v0, p0, Lorg/jline/utils/AttributedString;->end:I

    .line 88
    .end local v0    # "l":I
    :goto_4
    return-void

    .line 48
    :cond_7
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "s"    # Lorg/jline/utils/AttributedStyle;

    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;IILorg/jline/utils/AttributedStyle;)V

    .line 44
    return-void
.end method

.method constructor <init>([C[JII)V
    .locals 0
    .param p1, "buffer"    # [C
    .param p2, "style"    # [J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 90
    invoke-direct {p0}, Lorg/jline/utils/AttributedCharSequence;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/jline/utils/AttributedString;->buffer:[C

    .line 92
    iput-object p2, p0, Lorg/jline/utils/AttributedString;->style:[J

    .line 93
    iput p3, p0, Lorg/jline/utils/AttributedString;->start:I

    .line 94
    iput p4, p0, Lorg/jline/utils/AttributedString;->end:I

    .line 95
    return-void
.end method

.method private arrEq([C[CIII)Z
    .locals 3
    .param p1, "a1"    # [C
    .param p2, "a2"    # [C
    .param p3, "s1"    # I
    .param p4, "s2"    # I
    .param p5, "l"    # I

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_1

    .line 182
    add-int v1, p3, v0

    aget-char v1, p1, v1

    add-int v2, p4, v0

    aget-char v2, p2, v2

    if-eq v1, v2, :cond_0

    .line 183
    const/4 v1, 0x0

    return v1

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private arrEq([J[JIII)Z
    .locals 5
    .param p1, "a1"    # [J
    .param p2, "a2"    # [J
    .param p3, "s1"    # I
    .param p4, "s2"    # I
    .param p5, "l"    # I

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_1

    .line 190
    add-int v1, p3, v0

    aget-wide v1, p1, v1

    add-int v3, p4, v0

    aget-wide v3, p2, v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 191
    const/4 v1, 0x0

    return v1

    .line 189
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static fromAnsi(Ljava/lang/String;)Lorg/jline/utils/AttributedString;
    .locals 1
    .param p0, "ansi"    # Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jline/utils/AttributedString;->fromAnsi(Ljava/lang/String;I)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method

.method public static fromAnsi(Ljava/lang/String;I)Lorg/jline/utils/AttributedString;
    .locals 3
    .param p0, "ansi"    # Ljava/lang/String;
    .param p1, "tabs"    # I

    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jline/utils/AttributedString;->fromAnsi(Ljava/lang/String;Ljava/util/List;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method

.method public static fromAnsi(Ljava/lang/String;Ljava/util/List;)Lorg/jline/utils/AttributedString;
    .locals 2
    .param p0, "ansi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/jline/utils/AttributedString;"
        }
    .end annotation

    .line 106
    .local p1, "tabs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_0
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;-><init>(I)V

    .line 110
    invoke-virtual {v0, p1}, Lorg/jline/utils/AttributedStringBuilder;->tabs(Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p0}, Lorg/jline/utils/AttributedStringBuilder;->ansiAppend(Ljava/lang/String;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v0

    .line 109
    return-object v0
.end method

.method public static join(Lorg/jline/utils/AttributedString;Ljava/lang/Iterable;)Lorg/jline/utils/AttributedString;
    .locals 5
    .param p0, "delimiter"    # Lorg/jline/utils/AttributedString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/utils/AttributedString;",
            "Ljava/lang/Iterable<",
            "Lorg/jline/utils/AttributedString;",
            ">;)",
            "Lorg/jline/utils/AttributedString;"
        }
    .end annotation

    .line 213
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/jline/utils/AttributedString;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 215
    .local v0, "sb":Lorg/jline/utils/AttributedStringBuilder;
    const/4 v1, 0x0

    .line 216
    .local v1, "i":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/utils/AttributedString;

    .line 217
    .local v3, "str":Lorg/jline/utils/AttributedString;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    if-lez v1, :cond_0

    if-eqz p0, :cond_0

    .line 218
    invoke-virtual {v0, p0}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 220
    :cond_0
    invoke-virtual {v0, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 221
    .end local v3    # "str":Lorg/jline/utils/AttributedString;
    move v1, v4

    goto :goto_0

    .line 222
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v2

    return-object v2
.end method

.method public static varargs join(Lorg/jline/utils/AttributedString;[Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedString;
    .locals 1
    .param p0, "delimiter"    # Lorg/jline/utils/AttributedString;
    .param p1, "elements"    # [Lorg/jline/utils/AttributedString;

    .line 207
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jline/utils/AttributedString;->join(Lorg/jline/utils/AttributedString;Ljava/lang/Iterable;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method

.method public static stripAnsi(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ansi"    # Ljava/lang/String;

    .line 116
    if-nez p0, :cond_0

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;-><init>(I)V

    .line 120
    invoke-virtual {v0, p0}, Lorg/jline/utils/AttributedStringBuilder;->ansiAppend(Ljava/lang/String;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    return-object v0
.end method


# virtual methods
.method protected buffer()[C
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/jline/utils/AttributedString;->buffer:[C

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 172
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 173
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 174
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/jline/utils/AttributedString;

    .line 175
    .local v2, "that":Lorg/jline/utils/AttributedString;
    iget v3, p0, Lorg/jline/utils/AttributedString;->end:I

    iget v7, p0, Lorg/jline/utils/AttributedString;->start:I

    sub-int v4, v3, v7

    iget v5, v2, Lorg/jline/utils/AttributedString;->end:I

    iget v8, v2, Lorg/jline/utils/AttributedString;->start:I

    sub-int/2addr v5, v8

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Lorg/jline/utils/AttributedString;->buffer:[C

    iget-object v6, v2, Lorg/jline/utils/AttributedString;->buffer:[C

    sub-int v9, v3, v7

    .line 176
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/jline/utils/AttributedString;->arrEq([C[CIII)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v5, p0, Lorg/jline/utils/AttributedString;->style:[J

    iget-object v6, v2, Lorg/jline/utils/AttributedString;->style:[J

    iget v7, p0, Lorg/jline/utils/AttributedString;->start:I

    iget v8, v2, Lorg/jline/utils/AttributedString;->start:I

    iget v3, p0, Lorg/jline/utils/AttributedString;->end:I

    sub-int v9, v3, v7

    .line 177
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/jline/utils/AttributedString;->arrEq([J[JIII)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 175
    :goto_0
    return v0

    .line 173
    .end local v2    # "that":Lorg/jline/utils/AttributedString;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 199
    iget-object v0, p0, Lorg/jline/utils/AttributedString;->buffer:[C

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    .line 200
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/jline/utils/AttributedString;->style:[J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    add-int/2addr v1, v2

    .line 201
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lorg/jline/utils/AttributedString;->start:I

    add-int/2addr v0, v2

    .line 202
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/jline/utils/AttributedString;->end:I

    add-int/2addr v1, v2

    .line 203
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public length()I
    .locals 2

    .line 136
    iget v0, p0, Lorg/jline/utils/AttributedString;->end:I

    iget v1, p0, Lorg/jline/utils/AttributedString;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected offset()I
    .locals 1

    .line 131
    iget v0, p0, Lorg/jline/utils/AttributedString;->start:I

    return v0
.end method

.method public styleAt(I)Lorg/jline/utils/AttributedStyle;
    .locals 5
    .param p1, "index"    # I

    .line 141
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-object v1, p0, Lorg/jline/utils/AttributedString;->style:[J

    iget v2, p0, Lorg/jline/utils/AttributedString;->start:I

    add-int v3, v2, p1

    aget-wide v3, v1, v3

    add-int/2addr v2, p1

    aget-wide v1, v1, v2

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method styleCodeAt(I)J
    .locals 2
    .param p1, "index"    # I

    .line 146
    iget-object v0, p0, Lorg/jline/utils/AttributedString;->style:[J

    iget v1, p0, Lorg/jline/utils/AttributedString;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public styleMatches(Ljava/util/regex/Pattern;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedString;
    .locals 10
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "style"    # Lorg/jline/utils/AttributedStyle;

    .line 155
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 156
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    .line 157
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 158
    iget-object v2, p0, Lorg/jline/utils/AttributedString;->style:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 160
    .local v2, "newstyle":[J
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 161
    iget v4, p0, Lorg/jline/utils/AttributedString;->start:I

    add-int v5, v4, v3

    add-int/2addr v4, v3

    aget-wide v6, v2, v4

    invoke-virtual {p2}, Lorg/jline/utils/AttributedStyle;->getMask()J

    move-result-wide v8

    not-long v8, v8

    and-long/2addr v6, v8

    invoke-virtual {p2}, Lorg/jline/utils/AttributedStyle;->getStyle()J

    move-result-wide v8

    or-long/2addr v6, v8

    aput-wide v6, v2, v5

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    .line 164
    if-nez v1, :cond_0

    .line 165
    new-instance v3, Lorg/jline/utils/AttributedString;

    iget-object v4, p0, Lorg/jline/utils/AttributedString;->buffer:[C

    iget v5, p0, Lorg/jline/utils/AttributedString;->start:I

    iget v6, p0, Lorg/jline/utils/AttributedString;->end:I

    invoke-direct {v3, v4, v2, v5, v6}, Lorg/jline/utils/AttributedString;-><init>([C[JII)V

    return-object v3

    .line 167
    .end local v2    # "newstyle":[J
    :cond_2
    return-object p0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lorg/jline/utils/AttributedString;->subSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object p1

    return-object p1
.end method

.method public subSequence(II)Lorg/jline/utils/AttributedString;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 151
    new-instance v0, Lorg/jline/utils/AttributedString;

    invoke-direct {v0, p0, p1, p2}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method
