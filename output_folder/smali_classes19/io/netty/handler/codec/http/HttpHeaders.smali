.class public abstract Lio/netty/handler/codec/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpHeaders$Values;,
        Lio/netty/handler/codec/http/HttpHeaders$Names;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final EMPTY_HEADERS:Lio/netty/handler/codec/http/HttpHeaders;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    invoke-static {}, Lio/netty/handler/codec/http/EmptyHttpHeaders;->instance()Lio/netty/handler/codec/http/EmptyHttpHeaders;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->EMPTY_HEADERS:Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 952
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 953
    return-void
.end method

.method public static addDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 940
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 941
    return-void
.end method

.method public static addHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 672
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 673
    return-void
.end method

.method public static addHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 658
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 659
    return-void
.end method

.method public static addIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 819
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->addInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    .line 820
    return-void
.end method

.method public static addIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 809
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 810
    return-void
.end method

.method public static clearHeaders(Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 702
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->clear()Lio/netty/handler/codec/http/HttpHeaders;

    .line 703
    return-void
.end method

.method private static containsCommaSeparatedTrimmed(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 6
    .param p0, "rawNext"    # Ljava/lang/CharSequence;
    .param p1, "expected"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .line 1609
    const/4 v0, 0x0

    .line 1611
    .local v0, "begin":I
    const/4 v1, -0x1

    const/16 v2, 0x2c

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    .line 1612
    invoke-static {p0, v2, v0}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    move v5, v4

    .local v5, "end":I
    if-ne v4, v1, :cond_0

    .line 1613
    invoke-static {p0}, Lio/netty/util/AsciiString;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1614
    return v3

    .line 1618
    :cond_0
    invoke-interface {p0, v0, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lio/netty/util/AsciiString;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1619
    return v3

    .line 1621
    :cond_1
    add-int/lit8 v0, v5, 0x1

    .line 1622
    invoke-static {p0, v2, v0}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    move v5, v4

    if-ne v4, v1, :cond_0

    .line 1624
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1625
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/AsciiString;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1626
    return v3

    .line 1631
    .end local v5    # "end":I
    :cond_2
    invoke-static {p0, v2, v0}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    move v5, v4

    .restart local v5    # "end":I
    if-ne v4, v1, :cond_3

    .line 1632
    invoke-static {p0}, Lio/netty/util/AsciiString;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p1}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1633
    return v3

    .line 1637
    :cond_3
    :goto_0
    invoke-interface {p0, v0, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lio/netty/util/AsciiString;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, p1}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1638
    return v3

    .line 1640
    :cond_4
    add-int/lit8 v0, v5, 0x1

    .line 1641
    invoke-static {p0, v2, v0}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    move v5, v4

    if-ne v4, v1, :cond_6

    .line 1643
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1644
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/AsciiString;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p1}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1645
    return v3

    .line 1650
    :cond_5
    const/4 v1, 0x0

    return v1

    .line 1641
    :cond_6
    goto :goto_0
.end method

.method public static encodeAscii(Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)V
    .locals 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1159
    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    .line 1160
    move-object v0, p0

    check-cast v0, Lio/netty/util/AsciiString;

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lio/netty/buffer/ByteBufUtil;->copy(Lio/netty/util/AsciiString;ILio/netty/buffer/ByteBuf;I)V

    goto :goto_0

    .line 1162
    :cond_0
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0, v0}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    .line 1164
    :goto_0
    return-void
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "name1"    # Ljava/lang/CharSequence;
    .param p1, "name2"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1154
    invoke-static {p0, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static getContentLength(Lio/netty/handler/codec/http/HttpMessage;)J
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 971
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->getContentLength(Lio/netty/handler/codec/http/HttpMessage;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getContentLength(Lio/netty/handler/codec/http/HttpMessage;J)J
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "defaultValue"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 988
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/http/HttpUtil;->getContentLength(Lio/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDate(Lio/netty/handler/codec/http/HttpMessage;)Ljava/util/Date;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1050
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->DATE:Lio/netty/util/AsciiString;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDate(Lio/netty/handler/codec/http/HttpMessage;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "defaultValue"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1062
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->DATE:Lio/netty/util/AsciiString;

    invoke-static {p0, v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/util/Date;
    .locals 6
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 845
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 849
    invoke-static {v0}, Lio/netty/handler/codec/DateFormatter;->parseHttpDate(Ljava/lang/CharSequence;)Ljava/util/Date;

    move-result-object v2

    .line 850
    .local v2, "date":Ljava/util/Date;
    if-eqz v2, :cond_0

    .line 853
    return-object v2

    .line 851
    :cond_0
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "header can\'t be parsed into a Date: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 847
    .end local v2    # "date":Ljava/util/Date;
    :cond_1
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "header not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public static getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 878
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lio/netty/handler/codec/DateFormatter;->parseHttpDate(Ljava/lang/CharSequence;)Ljava/util/Date;

    move-result-object v1

    .line 880
    .local v1, "date":Ljava/util/Date;
    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public static getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 829
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 863
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 567
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 592
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 577
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHost(Lio/netty/handler/codec/http/HttpMessage;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1006
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHost(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "defaultValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1017
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 728
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 732
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 730
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "header not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 757
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->getInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)I
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 712
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public static getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)I
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 742
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->getInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static is100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1083
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->is100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    return v0
.end method

.method public static isContentLengthSet(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 1
    .param p0, "m"    # Lio/netty/handler/codec/http/HttpMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1146
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->isContentLengthSet(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    return v0
.end method

.method public static isKeepAlive(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 519
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->isKeepAlive(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    return v0
.end method

.method public static isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1122
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    return v0
.end method

.method public static newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1174
    new-instance v0, Lio/netty/util/AsciiString;

    invoke-direct {v0, p0}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static removeHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 692
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 693
    return-void
.end method

.method public static removeHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 682
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 683
    return-void
.end method

.method public static removeTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 1
    .param p0, "m"    # Lio/netty/handler/codec/http/HttpMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1130
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpUtil;->setTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 1131
    return-void
.end method

.method public static set100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1095
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpUtil;->set100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 1096
    return-void
.end method

.method public static set100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;Z)V
    .locals 0
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "set"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1109
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpUtil;->set100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 1110
    return-void
.end method

.method public static setContentLength(Lio/netty/handler/codec/http/HttpMessage;J)V
    .locals 0
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "length"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 996
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/http/HttpUtil;->setContentLength(Lio/netty/handler/codec/http/HttpMessage;J)V

    .line 997
    return-void
.end method

.method public static setDate(Lio/netty/handler/codec/http/HttpMessage;Ljava/util/Date;)V
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1072
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->DATE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 1073
    return-void
.end method

.method public static setDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 930
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/Date;>;"
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 931
    return-void
.end method

.method public static setDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)V
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 903
    if-eqz p2, :cond_0

    .line 904
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {p2}, Lio/netty/handler/codec/DateFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 906
    :cond_0
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 908
    :goto_0
    return-void
.end method

.method public static setDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 917
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/Date;>;"
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 918
    return-void
.end method

.method public static setDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 890
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->setDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)V

    .line 891
    return-void
.end method

.method public static setHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 648
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 649
    return-void
.end method

.method public static setHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 617
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 618
    return-void
.end method

.method public static setHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 627
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 628
    return-void
.end method

.method public static setHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 602
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 603
    return-void
.end method

.method public static setHost(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "value"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1037
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 1038
    return-void
.end method

.method public static setHost(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1027
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 1028
    return-void
.end method

.method public static setIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 778
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    .line 779
    return-void
.end method

.method public static setIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 799
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 800
    return-void
.end method

.method public static setIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 767
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    .line 768
    return-void
.end method

.method public static setIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 788
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 789
    return-void
.end method

.method public static setKeepAlive(Lio/netty/handler/codec/http/HttpMessage;Z)V
    .locals 0
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "keepAlive"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 545
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpUtil;->setKeepAlive(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 546
    return-void
.end method

.method public static setTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 1
    .param p0, "m"    # Lio/netty/handler/codec/http/HttpMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1138
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpUtil;->setTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 1139
    return-void
.end method


# virtual methods
.method public add(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 4
    .param p1, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;

    .line 1416
    const-string v0, "headers"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1417
    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1418
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 1419
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 1420
    :cond_0
    return-object p0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .line 1407
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1381
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public abstract add(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation
.end method

.method public abstract add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public abstract addInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public abstract addShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public abstract clear()Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 1342
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "ignoreCase"    # Z

    .line 1688
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ignoreCase"    # Z

    .line 1570
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->valueStringIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    .line 1571
    .local v0, "valueIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 1572
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1573
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1574
    return v1

    .line 1578
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1579
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1580
    return v1

    .line 1584
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public containsValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "ignoreCase"    # Z

    .line 1598
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->valueCharSequenceIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    .line 1599
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1600
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1, p2, p3}, Lio/netty/handler/codec/http/HttpHeaders;->containsCommaSeparatedTrimmed(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1601
    const/4 v1, 0x1

    return v1

    .line 1604
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public copy()Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1

    .line 1700
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    invoke-direct {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>()V

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public abstract entries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public get(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 1193
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 1204
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1206
    return-object p2

    .line 1208
    :cond_0
    return-object v0
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getAll(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1288
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAll(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public final getAllAsString(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1668
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 1659
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getInt(Ljava/lang/CharSequence;I)I
.end method

.method public abstract getInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;
.end method

.method public abstract getShort(Ljava/lang/CharSequence;)Ljava/lang/Short;
.end method

.method public abstract getShort(Ljava/lang/CharSequence;S)S
.end method

.method public abstract getTimeMillis(Ljava/lang/CharSequence;J)J
.end method

.method public abstract getTimeMillis(Ljava/lang/CharSequence;)Ljava/lang/Long;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public final iteratorAsString()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1675
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract iteratorCharSequence()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract names()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 1556
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public abstract remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 4
    .param p1, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;

    .line 1495
    const-string v0, "headers"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1497
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaders;->clear()Lio/netty/handler/codec/http/HttpHeaders;

    .line 1499
    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1500
    return-object p0

    .line 1503
    :cond_0
    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1504
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 1505
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 1506
    :cond_1
    return-object p0
.end method

.method public set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .line 1486
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1458
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public setAll(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 4
    .param p1, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;

    .line 1516
    const-string v0, "headers"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1518
    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1519
    return-object p0

    .line 1522
    :cond_0
    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1523
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 1524
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 1525
    :cond_1
    return-object p0
.end method

.method public abstract setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public abstract setShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public abstract size()I
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1693
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaders;->iteratorCharSequence()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaders;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/netty/handler/codec/HeadersUtils;->toString(Ljava/lang/Class;Ljava/util/Iterator;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueCharSequenceIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1332
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->valueStringIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public valueStringIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1323
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
