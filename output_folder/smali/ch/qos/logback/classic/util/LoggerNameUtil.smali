.class public Lch/qos/logback/classic/util/LoggerNameUtil;
.super Ljava/lang/Object;
.source "LoggerNameUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeNameParts(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "loggerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "partList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 57
    .local v1, "fromIndex":I
    :goto_0
    invoke-static {p0, v1}, Lch/qos/logback/classic/util/LoggerNameUtil;->getSeparatorIndexOf(Ljava/lang/String;I)I

    move-result v2

    .line 58
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    nop

    .line 65
    .end local v2    # "index":I
    return-object v0

    .line 62
    .restart local v2    # "index":I
    :cond_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v1, v2, 0x1

    .line 64
    .end local v2    # "index":I
    goto :goto_0
.end method

.method public static getFirstSeparatorIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lch/qos/logback/classic/util/LoggerNameUtil;->getSeparatorIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSeparatorIndexOf(Ljava/lang/String;I)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fromIndex"    # I

    .line 39
    const/16 v0, 0x2e

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 40
    .local v0, "dotIndex":I
    const/16 v1, 0x24

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 42
    .local v1, "dollarIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    .line 43
    return v2

    .line 44
    :cond_0
    if-ne v0, v2, :cond_1

    .line 45
    return v1

    .line 46
    :cond_1
    if-ne v1, v2, :cond_2

    .line 47
    return v0

    .line 49
    :cond_2
    if-ge v0, v1, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    return v2
.end method
