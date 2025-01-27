.class public Lch/qos/logback/core/util/ContentTypeUtil;
.super Ljava/lang/Object;
.source "ContentTypeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSubType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "contextType"    # Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 33
    return-object v0

    .line 35
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 36
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 37
    return-object v0

    .line 39
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 40
    .local v2, "subTypeStartIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_2
    return-object v0
.end method

.method public static isTextual(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contextType"    # Ljava/lang/String;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return v0

    .line 28
    :cond_0
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
