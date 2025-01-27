.class public Lch/qos/logback/core/pattern/parser/FormattingNode;
.super Lch/qos/logback/core/pattern/parser/Node;
.source "FormattingNode.java"


# instance fields
.field formatInfo:Lch/qos/logback/core/pattern/FormatInfo;


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .line 23
    invoke-direct {p0, p1}, Lch/qos/logback/core/pattern/parser/Node;-><init>(I)V

    .line 24
    return-void
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0, p1, p2}, Lch/qos/logback/core/pattern/parser/Node;-><init>(ILjava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 39
    invoke-super {p0, p1}, Lch/qos/logback/core/pattern/parser/Node;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 40
    return v1

    .line 43
    :cond_0
    instance-of v0, p1, Lch/qos/logback/core/pattern/parser/FormattingNode;

    if-nez v0, :cond_1

    .line 44
    return v1

    .line 46
    :cond_1
    move-object v0, p1

    check-cast v0, Lch/qos/logback/core/pattern/parser/FormattingNode;

    .line 48
    .local v0, "r":Lch/qos/logback/core/pattern/parser/FormattingNode;
    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/FormattingNode;->formatInfo:Lch/qos/logback/core/pattern/FormatInfo;

    if-eqz v2, :cond_2

    iget-object v1, v0, Lch/qos/logback/core/pattern/parser/FormattingNode;->formatInfo:Lch/qos/logback/core/pattern/FormatInfo;

    invoke-virtual {v2, v1}, Lch/qos/logback/core/pattern/FormatInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lch/qos/logback/core/pattern/parser/FormattingNode;->formatInfo:Lch/qos/logback/core/pattern/FormatInfo;

    if-nez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public getFormatInfo()Lch/qos/logback/core/pattern/FormatInfo;
    .locals 1

    .line 31
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/FormattingNode;->formatInfo:Lch/qos/logback/core/pattern/FormatInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 53
    invoke-super {p0}, Lch/qos/logback/core/pattern/parser/Node;->hashCode()I

    move-result v0

    .line 54
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/FormattingNode;->formatInfo:Lch/qos/logback/core/pattern/FormatInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lch/qos/logback/core/pattern/FormatInfo;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 55
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public setFormatInfo(Lch/qos/logback/core/pattern/FormatInfo;)V
    .locals 0
    .param p1, "formatInfo"    # Lch/qos/logback/core/pattern/FormatInfo;

    .line 35
    iput-object p1, p0, Lch/qos/logback/core/pattern/parser/FormattingNode;->formatInfo:Lch/qos/logback/core/pattern/FormatInfo;

    .line 36
    return-void
.end method
