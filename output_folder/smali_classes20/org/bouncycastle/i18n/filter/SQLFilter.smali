.class public Lorg/bouncycastle/i18n/filter/SQLFilter;
.super Ljava/lang/Object;
.source "SQLFilter.java"

# interfaces
.implements Lorg/bouncycastle/i18n/filter/Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    add-int/lit8 v1, p1, 0x1

    .line 29
    const-string v2, "\\\\"

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move p1, v1

    goto :goto_1

    :sswitch_1
    add-int/lit8 v1, p1, 0x1

    .line 30
    const-string v2, "\\="

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move p1, v1

    goto :goto_1

    :sswitch_2
    add-int/lit8 v1, p1, 0x1

    .line 46
    const-string v2, "\\;"

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move p1, v1

    goto :goto_1

    :sswitch_3
    add-int/lit8 v1, p1, 0x1

    .line 47
    const-string v2, "\\/"

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move p1, v1

    goto :goto_1

    :sswitch_4
    add-int/lit8 v1, p1, 0x1

    .line 48
    const-string v2, "\\-"

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move p1, v1

    goto :goto_1

    :sswitch_5
    add-int/lit8 v1, p1, 0x1

    .line 49
    const-string v2, "\\\'"

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move p1, v1

    goto :goto_1

    :sswitch_6
    add-int/lit8 v1, p1, 0x1

    .line 53
    const-string v2, "\\\""

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move p1, v1

    goto :goto_1

    :sswitch_7
    add-int/lit8 v1, p1, 0x1

    .line 77
    const-string v2, "\\r"

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move p1, v1

    goto :goto_1

    :sswitch_8
    add-int/lit8 v1, p1, 0x1

    .line 81
    const-string v2, "\\n"

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move p1, v1

    :goto_1
    nop

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_8
        0xd -> :sswitch_7
        0x22 -> :sswitch_6
        0x27 -> :sswitch_5
        0x2d -> :sswitch_4
        0x2f -> :sswitch_3
        0x3b -> :sswitch_2
        0x3d -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public doFilterUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/bouncycastle/i18n/filter/SQLFilter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
