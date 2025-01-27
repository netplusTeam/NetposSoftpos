.class public Lorg/jline/utils/DiffHelper;
.super Ljava/lang/Object;
.source "DiffHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/utils/DiffHelper$Diff;,
        Lorg/jline/utils/DiffHelper$Operation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static diff(Lorg/jline/utils/AttributedString;Lorg/jline/utils/AttributedString;)Ljava/util/List;
    .locals 10
    .param p0, "text1"    # Lorg/jline/utils/AttributedString;
    .param p1, "text2"    # Lorg/jline/utils/AttributedString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/utils/AttributedString;",
            "Lorg/jline/utils/AttributedString;",
            ")",
            "Ljava/util/List<",
            "Lorg/jline/utils/DiffHelper$Diff;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lorg/jline/utils/AttributedString;->length()I

    move-result v0

    .line 78
    .local v0, "l1":I
    invoke-virtual {p1}, Lorg/jline/utils/AttributedString;->length()I

    move-result v1

    .line 79
    .local v1, "l2":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 80
    .local v2, "n":I
    const/4 v3, 0x0

    .line 84
    .local v3, "commonStart":I
    const/4 v4, -0x1

    .line 85
    .local v4, "startHiddenRange":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 86
    invoke-virtual {p0, v3}, Lorg/jline/utils/AttributedString;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v3}, Lorg/jline/utils/AttributedString;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_2

    .line 87
    invoke-virtual {p0, v3}, Lorg/jline/utils/AttributedString;->styleAt(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v5

    invoke-virtual {p1, v3}, Lorg/jline/utils/AttributedString;->styleAt(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jline/utils/AttributedStyle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 88
    invoke-virtual {p0, v3}, Lorg/jline/utils/AttributedString;->isHidden(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    if-gez v4, :cond_1

    .line 90
    move v4, v3

    goto :goto_1

    .line 92
    :cond_0
    const/4 v4, -0x1

    .line 93
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_2
    if-ltz v4, :cond_5

    if-le v0, v3, :cond_3

    .line 96
    invoke-virtual {p0, v3}, Lorg/jline/utils/AttributedString;->isHidden(I)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    if-le v1, v3, :cond_5

    .line 97
    invoke-virtual {p1, v3}, Lorg/jline/utils/AttributedString;->isHidden(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 98
    :cond_4
    move v3, v4

    .line 100
    :cond_5
    const/4 v4, -0x1

    .line 101
    const/4 v5, 0x0

    .line 102
    .local v5, "commonEnd":I
    :goto_2
    sub-int v6, v2, v3

    if-ge v5, v6, :cond_8

    sub-int v6, v0, v5

    add-int/lit8 v6, v6, -0x1

    .line 103
    invoke-virtual {p0, v6}, Lorg/jline/utils/AttributedString;->charAt(I)C

    move-result v6

    sub-int v7, v1, v5

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Lorg/jline/utils/AttributedString;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_8

    sub-int v6, v0, v5

    add-int/lit8 v6, v6, -0x1

    .line 104
    invoke-virtual {p0, v6}, Lorg/jline/utils/AttributedString;->styleAt(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v6

    sub-int v7, v1, v5

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Lorg/jline/utils/AttributedString;->styleAt(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jline/utils/AttributedStyle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 105
    sub-int v6, v0, v5

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lorg/jline/utils/AttributedString;->isHidden(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 106
    if-gez v4, :cond_7

    .line 107
    move v4, v5

    goto :goto_3

    .line 109
    :cond_6
    const/4 v4, -0x1

    .line 110
    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 112
    :cond_8
    if-ltz v4, :cond_9

    .line 113
    move v5, v4

    .line 114
    :cond_9
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 115
    .local v6, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jline/utils/DiffHelper$Diff;>;"
    if-lez v3, :cond_a

    .line 116
    new-instance v7, Lorg/jline/utils/DiffHelper$Diff;

    sget-object v8, Lorg/jline/utils/DiffHelper$Operation;->EQUAL:Lorg/jline/utils/DiffHelper$Operation;

    const/4 v9, 0x0

    .line 117
    invoke-virtual {p0, v9, v3}, Lorg/jline/utils/AttributedString;->subSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/jline/utils/DiffHelper$Diff;-><init>(Lorg/jline/utils/DiffHelper$Operation;Lorg/jline/utils/AttributedString;)V

    .line 116
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_a
    add-int v7, v3, v5

    if-le v1, v7, :cond_b

    .line 120
    new-instance v7, Lorg/jline/utils/DiffHelper$Diff;

    sget-object v8, Lorg/jline/utils/DiffHelper$Operation;->INSERT:Lorg/jline/utils/DiffHelper$Operation;

    sub-int v9, v1, v5

    .line 121
    invoke-virtual {p1, v3, v9}, Lorg/jline/utils/AttributedString;->subSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/jline/utils/DiffHelper$Diff;-><init>(Lorg/jline/utils/DiffHelper$Operation;Lorg/jline/utils/AttributedString;)V

    .line 120
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_b
    add-int v7, v3, v5

    if-le v0, v7, :cond_c

    .line 124
    new-instance v7, Lorg/jline/utils/DiffHelper$Diff;

    sget-object v8, Lorg/jline/utils/DiffHelper$Operation;->DELETE:Lorg/jline/utils/DiffHelper$Operation;

    sub-int v9, v0, v5

    .line 125
    invoke-virtual {p0, v3, v9}, Lorg/jline/utils/AttributedString;->subSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/jline/utils/DiffHelper$Diff;-><init>(Lorg/jline/utils/DiffHelper$Operation;Lorg/jline/utils/AttributedString;)V

    .line 124
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_c
    if-lez v5, :cond_d

    .line 128
    new-instance v7, Lorg/jline/utils/DiffHelper$Diff;

    sget-object v8, Lorg/jline/utils/DiffHelper$Operation;->EQUAL:Lorg/jline/utils/DiffHelper$Operation;

    sub-int v9, v0, v5

    .line 129
    invoke-virtual {p0, v9, v0}, Lorg/jline/utils/AttributedString;->subSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/jline/utils/DiffHelper$Diff;-><init>(Lorg/jline/utils/DiffHelper$Operation;Lorg/jline/utils/AttributedString;)V

    .line 128
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_d
    return-object v6
.end method
