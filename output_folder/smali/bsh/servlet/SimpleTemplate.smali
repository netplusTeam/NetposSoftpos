.class public Lbsh/servlet/SimpleTemplate;
.super Ljava/lang/Object;
.source "SimpleTemplate.java"


# static fields
.field static NO_TEMPLATE:Ljava/lang/String;

.field static cacheTemplates:Z

.field static templateData:Ljava/util/Map;


# instance fields
.field buff:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-string v0, "NO_TEMPLATE"

    sput-object v0, Lbsh/servlet/SimpleTemplate;->NO_TEMPLATE:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbsh/servlet/SimpleTemplate;->templateData:Ljava/util/Map;

    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lbsh/servlet/SimpleTemplate;->cacheTemplates:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1}, Lbsh/servlet/SimpleTemplate;->getStringFromStream(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "template":Ljava/lang/String;
    invoke-direct {p0, v0}, Lbsh/servlet/SimpleTemplate;->init(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "template"    # Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-direct {p0, p1}, Lbsh/servlet/SimpleTemplate;->init(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lbsh/servlet/SimpleTemplate;->getStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "template":Ljava/lang/String;
    invoke-direct {p0, v0}, Lbsh/servlet/SimpleTemplate;->init(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static getStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "ins"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lbsh/servlet/SimpleTemplate;->getStringFromStream(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringFromStream(Ljava/io/Reader;)Ljava/lang/String;
    .locals 5
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 112
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTemplate(Ljava/lang/String;)Lbsh/servlet/SimpleTemplate;
    .locals 5
    .param p0, "file"    # Ljava/lang/String;

    .line 80
    sget-object v0, Lbsh/servlet/SimpleTemplate;->templateData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "templateText":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v2, Lbsh/servlet/SimpleTemplate;->cacheTemplates:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    sget-object v2, Lbsh/servlet/SimpleTemplate;->NO_TEMPLATE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    return-object v1

    .line 84
    :cond_1
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "fr":Ljava/io/FileReader;
    invoke-static {v2}, Lbsh/servlet/SimpleTemplate;->getStringFromStream(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 86
    sget-object v3, Lbsh/servlet/SimpleTemplate;->templateData:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    nop

    .end local v2    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .line 87
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lbsh/servlet/SimpleTemplate;->templateData:Ljava/util/Map;

    sget-object v4, Lbsh/servlet/SimpleTemplate;->NO_TEMPLATE:Ljava/lang/String;

    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 96
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 97
    return-object v1

    .line 99
    :cond_3
    new-instance v1, Lbsh/servlet/SimpleTemplate;

    invoke-direct {v1, v0}, Lbsh/servlet/SimpleTemplate;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private init(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbsh/servlet/SimpleTemplate;->buff:Ljava/lang/StringBuffer;

    .line 135
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 226
    .local v0, "filename":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, p0, v1

    .line 227
    .local v1, "param":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, p0, v2

    .line 229
    .local v2, "value":Ljava/lang/String;
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 230
    .local v3, "fr":Ljava/io/FileReader;
    invoke-static {v3}, Lbsh/servlet/SimpleTemplate;->getStringFromStream(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "templateText":Ljava/lang/String;
    new-instance v5, Lbsh/servlet/SimpleTemplate;

    invoke-direct {v5, v4}, Lbsh/servlet/SimpleTemplate;-><init>(Ljava/lang/String;)V

    .line 233
    .local v5, "template":Lbsh/servlet/SimpleTemplate;
    invoke-virtual {v5, v1, v2}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v6}, Lbsh/servlet/SimpleTemplate;->write(Ljava/io/PrintStream;)V

    .line 235
    return-void
.end method

.method public static setCacheTemplates(Z)V
    .locals 0
    .param p0, "b"    # Z

    .line 238
    sput-boolean p0, Lbsh/servlet/SimpleTemplate;->cacheTemplates:Z

    .line 239
    return-void
.end method


# virtual methods
.method findTemplate(Ljava/lang/String;)[I
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lbsh/servlet/SimpleTemplate;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 155
    .local v1, "len":I
    const/4 v2, 0x0

    .line 157
    .local v2, "start":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_8

    .line 160
    const-string v4, "<!--"

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 161
    .local v4, "cstart":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 162
    return-object v3

    .line 163
    :cond_0
    const-string v6, "-->"

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 164
    .local v7, "cend":I
    if-ne v7, v5, :cond_1

    .line 165
    return-object v3

    .line 166
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v7, v6

    .line 169
    const-string v6, "TEMPLATE-"

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 170
    .local v8, "tstart":I
    if-ne v8, v5, :cond_2

    .line 171
    move v2, v7

    .line 172
    goto :goto_0

    .line 176
    :cond_2
    if-le v8, v7, :cond_3

    .line 177
    move v2, v7

    .line 178
    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v8

    .line 184
    .local v5, "pstart":I
    move v6, v1

    .line 185
    .local v6, "pend":I
    move v6, v5

    :goto_1
    if-ge v6, v1, :cond_5

    .line 186
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 187
    .local v9, "c":C
    const/16 v10, 0x20

    if-eq v9, v10, :cond_5

    const/16 v10, 0x9

    if-eq v9, v10, :cond_5

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_4

    .line 188
    goto :goto_2

    .line 185
    .end local v9    # "c":C
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 190
    :cond_5
    :goto_2
    if-lt v6, v1, :cond_6

    .line 191
    return-object v3

    .line 193
    :cond_6
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "param":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 197
    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v4, v9, v10

    const/4 v10, 0x1

    aput v7, v9, v10

    return-object v9

    .line 201
    :cond_7
    move v2, v7

    .line 202
    .end local v3    # "param":Ljava/lang/String;
    .end local v4    # "cstart":I
    .end local v5    # "pstart":I
    .end local v6    # "pend":I
    .end local v7    # "cend":I
    .end local v8    # "tstart":I
    goto :goto_0

    .line 205
    :cond_8
    return-object v3
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 142
    :goto_0
    invoke-virtual {p0, p1}, Lbsh/servlet/SimpleTemplate;->findTemplate(Ljava/lang/String;)[I

    move-result-object v0

    move-object v1, v0

    .local v1, "range":[I
    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lbsh/servlet/SimpleTemplate;->buff:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3, p2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lbsh/servlet/SimpleTemplate;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 217
    invoke-virtual {p0}, Lbsh/servlet/SimpleTemplate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 213
    invoke-virtual {p0}, Lbsh/servlet/SimpleTemplate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    return-void
.end method
