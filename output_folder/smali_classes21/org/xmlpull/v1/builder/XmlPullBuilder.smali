.class public abstract Lorg/xmlpull/v1/builder/XmlPullBuilder;
.super Ljava/lang/Object;
.source "XmlPullBuilder.java"


# instance fields
.field protected factory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lorg/xmlpull/v1/builder/XmlPullBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;

    invoke-direct {v0}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;-><init>()V

    .line 46
    .local v0, "impl":Lorg/xmlpull/v1/builder/XmlPullBuilder;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    nop

    .line 52
    return-object v0

    .line 50
    :catch_0
    move-exception v1

    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lorg/xmlpull/v1/builder/XmlBuilderException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "could not create XmlPull factory:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getFactory()Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    return-object v0
.end method

.method public newDocument()Lorg/xmlpull/v1/builder/XmlDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->newDocument(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDocument;

    move-result-object v0

    return-object v0
.end method

.method public abstract newDocument(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract newFragment(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract newFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract newFragment(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract newNamespace(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public parseFragementFromInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 174
    const-string v0, ")"

    const/4 v1, 0x0

    .line 176
    .local v1, "pp":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    iget-object v2, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    move-object v1, v2

    .line 177
    invoke-interface {v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    nop

    .line 185
    nop

    .line 188
    invoke-virtual {p0, v1}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->parseFragment(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    return-object v0

    .line 182
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Lorg/xmlpull/v1/builder/XmlBuilderException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "IO error when starting to parse input stream (encoding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "pp":Lorg/xmlpull/v1/XmlPullParser;
    .end local p1    # "is":Ljava/io/InputStream;
    .end local p2    # "encoding":Ljava/lang/String;
    throw v3
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 186
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "pp":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p1    # "is":Ljava/io/InputStream;
    .restart local p2    # "encoding":Ljava/lang/String;
    :catch_1
    move-exception v2

    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Lorg/xmlpull/v1/builder/XmlBuilderException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "could not start parsing input stream (encoding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public abstract parseFragment(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public parseFragmentFromInputStream(Ljava/io/InputStream;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "pp":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    iget-object v1, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    move-object v0, v1

    .line 158
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    nop

    .line 166
    nop

    .line 169
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->parseFragment(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v1

    return-object v1

    .line 163
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v3, "IO error when starting to parse input stream"

    invoke-direct {v2, v3, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "pp":Lorg/xmlpull/v1/XmlPullParser;
    .end local p1    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 167
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "pp":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p1    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v3, "could not start parsing input stream"

    invoke-direct {v2, v3, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public parseFragmentFromReader(Ljava/io/Reader;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 4
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, "pp":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    iget-object v1, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    move-object v0, v1

    .line 196
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    nop

    .line 204
    nop

    .line 207
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->parseFragment(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v1

    return-object v1

    .line 201
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v3, "IO error when starting to parse from reader"

    invoke-direct {v2, v3, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "pp":Lorg/xmlpull/v1/XmlPullParser;
    .end local p1    # "reader":Ljava/io/Reader;
    throw v2
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 205
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "pp":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p1    # "reader":Ljava/io/Reader;
    :catch_1
    move-exception v1

    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v3, "could not start parsing input from reader"

    invoke-direct {v2, v3, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public parseInputStream(Ljava/io/InputStream;)Lorg/xmlpull/v1/builder/XmlDocument;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "pp":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    iget-object v1, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    move-object v0, v1

    .line 111
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    nop

    .line 116
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlDocument;

    move-result-object v1

    return-object v1

    .line 114
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v3, "could not start parsing input stream"

    invoke-direct {v2, v3, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public parseInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDocument;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "pp":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    iget-object v1, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    move-object v0, v1

    .line 124
    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    nop

    .line 129
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlDocument;

    move-result-object v1

    return-object v1

    .line 127
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lorg/xmlpull/v1/builder/XmlBuilderException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "could not start parsing input stream (encoding="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public abstract parseItem(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract parseLocation(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public parseReader(Ljava/io/Reader;)Lorg/xmlpull/v1/builder/XmlDocument;
    .locals 4
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "pp":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    iget-object v1, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    move-object v0, v1

    .line 137
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    nop

    .line 142
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlDocument;

    move-result-object v1

    return-object v1

    .line 140
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v3, "could not start parsing input from reader"

    invoke-direct {v2, v3, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public abstract parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract serialize(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract serializeEndTag(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract serializeItem(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract serializeStartTag(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public serializeToOutputStream(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 262
    const-string v0, "UTF8"

    invoke-virtual {p0, p1, p2, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->serializeToOutputStream(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public serializeToOutputStream(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 271
    const/4 v0, 0x0

    .line 273
    .local v0, "ser":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    iget-object v1, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    move-object v0, v1

    .line 274
    invoke-interface {v0, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    nop

    .line 279
    invoke-virtual {p0, p1, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->serialize(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 280
    .end local v0    # "ser":Lorg/xmlpull/v1/XmlSerializer;
    return-void

    .line 276
    .restart local v0    # "ser":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/xmlpull/v1/builder/XmlBuilderException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "could not serialize node to output stream (encoding="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public serializeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 302
    .local v0, "sw":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->serializeToWriter(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 303
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public serializeToWriter(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 4
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "ser":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    iget-object v1, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    move-object v0, v1

    .line 290
    invoke-interface {v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    nop

    .line 294
    invoke-virtual {p0, p1, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->serialize(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 295
    .end local v0    # "ser":Lorg/xmlpull/v1/XmlSerializer;
    return-void

    .line 292
    .restart local v0    # "ser":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v3, "could not serialize node to writer"

    invoke-direct {v2, v3, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public skipSubTree(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-interface {p1, v1, v0, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    nop

    .line 215
    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-gtz v0, :cond_1

    .line 223
    nop

    .line 228
    return-void

    .line 216
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 218
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 219
    :cond_2
    if-ne v2, v1, :cond_0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :catch_0
    move-exception p1

    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "IO error when skipping subtree"

    invoke-direct {v0, v1, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 224
    :catch_1
    move-exception p1

    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "could not skip subtree"

    invoke-direct {v0, v1, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
