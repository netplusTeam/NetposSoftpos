.class public final Lorg/jline/style/InterpolationHelper;
.super Ljava/lang/Object;
.source "InterpolationHelper.java"


# static fields
.field private static final DELIM_START:Ljava/lang/String; = "@{"

.field private static final DELIM_STOP:Ljava/lang/String; = "}"

.field private static final ESCAPE_CHAR:C = '\\'

.field private static final MARKER:Ljava/lang/String; = "@__"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private static doSubstVars(Ljava/lang/String;Ljava/util/function/Function;Z)Ljava/lang/String;
    .locals 7
    .param p0, "val"    # Ljava/lang/String;
    .param p2, "defaultsToEmptyString"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 46
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, -0x1

    .line 48
    .local v0, "stopDelim":I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    const-string v2, "}"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 49
    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_1

    .line 50
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 56
    :cond_1
    const-string v1, "@{"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 57
    .local v3, "startDelim":I
    :goto_1
    if-ltz v0, :cond_4

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 59
    .local v4, "idx":I
    if-ltz v4, :cond_4

    if-le v4, v0, :cond_2

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    if-ge v4, v0, :cond_3

    .line 62
    move v3, v4

    .line 64
    .end local v4    # "idx":I
    :cond_3
    goto :goto_1

    .line 66
    :cond_4
    :goto_2
    if-ltz v3, :cond_5

    if-ltz v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    if-lt v0, v4, :cond_0

    .line 70
    :cond_5
    if-ltz v3, :cond_a

    if-gez v0, :cond_6

    goto :goto_4

    .line 78
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "variable":Ljava/lang/String;
    const/4 v4, 0x0

    .line 82
    .local v4, "substValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    if-eqz p1, :cond_7

    .line 83
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    .line 86
    :cond_7
    if-nez v4, :cond_9

    .line 87
    if-eqz p2, :cond_8

    .line 88
    const-string v4, ""

    goto :goto_3

    .line 92
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@__{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 99
    :cond_9
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-static {p0, p1, p2}, Lorg/jline/style/InterpolationHelper;->doSubstVars(Ljava/lang/String;Ljava/util/function/Function;Z)Ljava/lang/String;

    move-result-object p0

    .line 106
    return-object p0

    .line 71
    .end local v1    # "variable":Ljava/lang/String;
    .end local v4    # "substValue":Ljava/lang/String;
    :cond_a
    :goto_4
    return-object p0
.end method

.method public static substVars(Ljava/lang/String;Ljava/util/function/Function;Z)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .param p2, "defaultsToEmptyString"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 32
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lorg/jline/style/InterpolationHelper;->doSubstVars(Ljava/lang/String;Ljava/util/function/Function;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jline/style/InterpolationHelper;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;

    .line 110
    const-string v0, "@__"

    const-string v1, "@"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 111
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 112
    .local v1, "escape":I
    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 113
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 114
    .local v2, "c":C
    const/16 v3, 0x7b

    if-eq v2, v3, :cond_0

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_0

    if-ne v2, v0, :cond_1

    .line 115
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 117
    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 118
    .end local v2    # "c":C
    goto :goto_0

    .line 119
    :cond_2
    return-object p0
.end method
