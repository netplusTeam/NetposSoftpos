.class public Lch/qos/logback/core/pattern/util/RegularEscapeUtil;
.super Ljava/lang/Object;
.source "RegularEscapeUtil.java"

# interfaces
.implements Lch/qos/logback/core/pattern/util/IEscapeUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static basicEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 61
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 64
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_9

    .line 65
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 66
    .local v2, "c":C
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_7

    .line 67
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 68
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_0

    .line 69
    const/16 v2, 0xa

    goto :goto_1

    .line 70
    :cond_0
    const/16 v3, 0x72

    if-ne v2, v3, :cond_1

    .line 71
    const/16 v2, 0xd

    goto :goto_1

    .line 72
    :cond_1
    const/16 v3, 0x74

    if-ne v2, v3, :cond_2

    .line 73
    const/16 v2, 0x9

    goto :goto_1

    .line 74
    :cond_2
    const/16 v3, 0x66

    if-ne v2, v3, :cond_3

    .line 75
    const/16 v2, 0xc

    goto :goto_1

    .line 76
    :cond_3
    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 77
    const/16 v2, 0x8

    goto :goto_1

    .line 78
    :cond_4
    const/16 v3, 0x22

    if-ne v2, v3, :cond_5

    .line 79
    const/16 v2, 0x22

    goto :goto_1

    .line 80
    :cond_5
    const/16 v3, 0x27

    if-ne v2, v3, :cond_6

    .line 81
    const/16 v2, 0x27

    goto :goto_1

    .line 82
    :cond_6
    if-ne v2, v4, :cond_8

    .line 83
    const/16 v2, 0x5c

    goto :goto_1

    .line 66
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :cond_7
    move v5, v3

    .line 86
    .end local v3    # "i":I
    .restart local v5    # "i":I
    :cond_8
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v5

    goto :goto_0

    .line 88
    .end local v5    # "i":I
    .local v2, "i":I
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public escape(Ljava/lang/String;Ljava/lang/StringBuffer;CI)V
    .locals 4
    .param p1, "escapeChars"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/lang/StringBuffer;
    .param p3, "next"    # C
    .param p4, "pointer"    # I

    .line 24
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 25
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 27
    :cond_0
    sparse-switch p3, :sswitch_data_0

    .line 44
    invoke-virtual {p0, p1}, Lch/qos/logback/core/pattern/util/RegularEscapeUtil;->formatEscapeCharsForListing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "commaSeperatedEscapeChars":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal char \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Only \\\\, \\_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \\t, \\n, \\r combinations are allowed as escape characters."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    .end local v0    # "commaSeperatedEscapeChars":Ljava/lang/String;
    :sswitch_0
    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 36
    goto :goto_0

    .line 38
    :sswitch_1
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    goto :goto_0

    .line 41
    :sswitch_2
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    goto :goto_0

    .line 30
    :sswitch_3
    goto :goto_0

    .line 32
    :sswitch_4
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 33
    nop

    .line 48
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x5c -> :sswitch_4
        0x5f -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_1
        0x74 -> :sswitch_0
    .end sparse-switch
.end method

.method formatEscapeCharsForListing(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "escapeChars"    # Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, "commaSeperatedEscapeChars":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 53
    const-string v2, ", \\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
