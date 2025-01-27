.class public Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;
.super Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;
.source "StaticXmlPullParserWrapper.java"

# interfaces
.implements Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p1, "pp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 23
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0, p1}, Lorg/xmlpull/v1/util/XmlPullUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPIData()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lorg/xmlpull/v1/util/XmlPullUtil;->getPIData(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lorg/xmlpull/v1/util/XmlPullUtil;->getPITarget(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/xmlpull/v1/util/XmlPullUtil;->getRequiredAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0, p1, p2}, Lorg/xmlpull/v1/util/XmlPullUtil;->getRequiredAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 56
    if-eqz p2, :cond_1

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->nextStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->isNil()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0, p1, p2}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->nextEndTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    iget-object v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x3

    invoke-interface {v1, v2, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    return-object v0

    .line 57
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "name for element can not be null"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNil()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "result":Z
    iget-object v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v3, "nil"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "value":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 82
    :cond_0
    return v0
.end method

.method public matches(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0, p1, p2, p3}, Lorg/xmlpull/v1/util/XmlPullUtil;->matches(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nextEndTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lorg/xmlpull/v1/util/XmlPullUtil;->nextEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 124
    return-void
.end method

.method public nextEndTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/xmlpull/v1/util/XmlPullUtil;->nextEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public nextEndTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0, p1, p2}, Lorg/xmlpull/v1/util/XmlPullUtil;->nextEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public nextStartTag()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 106
    return-void

    .line 103
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected START_TAG and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextStartTag(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 112
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public nextStartTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 119
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public nextText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0, p1, p2}, Lorg/xmlpull/v1/util/XmlPullUtil;->nextText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readDouble()D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .local v1, "d":D
    goto :goto_3

    .line 155
    .end local v1    # "d":D
    :catch_0
    move-exception v1

    const-wide/16 v2, 0x0

    .local v1, "ex":Ljava/lang/NumberFormatException;
    .local v2, "d":D
    const-string v4, "INF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "infinity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    const-string v4, "-INF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-infinity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    const-string v4, "NaN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_2

    .line 163
    :cond_2
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "can\'t parse double value \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 159
    :cond_3
    :goto_0
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_2

    .line 156
    :cond_4
    :goto_1
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 165
    :goto_2
    move-wide v1, v2

    .line 166
    .end local v2    # "d":D
    .local v1, "d":D
    :goto_3
    return-wide v1
.end method

.method public readDoubleElement(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .local v1, "f":F
    goto :goto_3

    .line 175
    .end local v1    # "f":F
    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .local v1, "ex":Ljava/lang/NumberFormatException;
    .local v2, "f":F
    const-string v3, "INF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "infinity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    const-string v3, "-INF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-infinity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    const-string v3, "NaN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    const/high16 v2, 0x7fc00000    # Float.NaN

    goto :goto_2

    .line 183
    :cond_2
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "can\'t parse float value \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 179
    :cond_3
    :goto_0
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_2

    .line 176
    :cond_4
    :goto_1
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 185
    :goto_2
    move v1, v2

    .line 186
    .end local v2    # "f":F
    .local v1, "f":F
    :goto_3
    return v1
.end method

.method public readFloatElement(Ljava/lang/String;Ljava/lang/String;)F
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->readFloat()F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .local v0, "i":I
    return v0

    .line 194
    .end local v0    # "i":I
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "can\'t parse int value"

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readIntElement(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->readInt()I

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringElemet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public skipSubTree()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lorg/xmlpull/v1/util/XmlPullUtil;->skipSubTree(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 147
    return-void
.end method
