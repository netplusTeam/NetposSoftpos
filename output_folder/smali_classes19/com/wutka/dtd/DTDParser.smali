.class public Lcom/wutka/dtd/DTDParser;
.super Ljava/lang/Object;
.source "DTDParser.java"

# interfaces
.implements Lcom/wutka/dtd/EntityExpansion;


# instance fields
.field protected defaultLocation:Ljava/lang/Object;

.field protected dtd:Lcom/wutka/dtd/DTD;

.field protected scanner:Lcom/wutka/dtd/Scanner;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "in"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->defaultLocation:Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/wutka/dtd/Scanner;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/wutka/dtd/Scanner;-><init>(Ljava/io/Reader;ZLcom/wutka/dtd/EntityExpansion;)V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    .line 44
    new-instance v0, Lcom/wutka/dtd/DTD;

    invoke-direct {v0}, Lcom/wutka/dtd/DTD;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 3
    .param p1, "in"    # Ljava/io/File;
    .param p2, "trace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->defaultLocation:Ljava/lang/Object;

    .line 57
    new-instance v0, Lcom/wutka/dtd/Scanner;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1, p2, p0}, Lcom/wutka/dtd/Scanner;-><init>(Ljava/io/Reader;ZLcom/wutka/dtd/EntityExpansion;)V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    .line 59
    new-instance v0, Lcom/wutka/dtd/DTD;

    invoke-direct {v0}, Lcom/wutka/dtd/DTD;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/wutka/dtd/Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/wutka/dtd/Scanner;-><init>(Ljava/io/Reader;ZLcom/wutka/dtd/EntityExpansion;)V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    .line 22
    new-instance v0, Lcom/wutka/dtd/DTD;

    invoke-direct {v0}, Lcom/wutka/dtd/DTD;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Z)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "trace"    # Z

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/wutka/dtd/Scanner;

    invoke-direct {v0, p1, p2, p0}, Lcom/wutka/dtd/Scanner;-><init>(Ljava/io/Reader;ZLcom/wutka/dtd/EntityExpansion;)V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    .line 33
    new-instance v0, Lcom/wutka/dtd/DTD;

    invoke-direct {v0}, Lcom/wutka/dtd/DTD;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 7
    .param p1, "in"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "file":Ljava/lang/String;
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v4

    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/wutka/dtd/DTDParser;->defaultLocation:Ljava/lang/Object;

    .line 72
    new-instance v1, Lcom/wutka/dtd/Scanner;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2, v6, p0}, Lcom/wutka/dtd/Scanner;-><init>(Ljava/io/Reader;ZLcom/wutka/dtd/EntityExpansion;)V

    iput-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    .line 74
    new-instance v1, Lcom/wutka/dtd/DTD;

    invoke-direct {v1}, Lcom/wutka/dtd/DTD;-><init>()V

    iput-object v1, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Z)V
    .locals 7
    .param p1, "in"    # Ljava/net/URL;
    .param p2, "trace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "file":Ljava/lang/String;
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v4

    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/wutka/dtd/DTDParser;->defaultLocation:Ljava/lang/Object;

    .line 92
    new-instance v1, Lcom/wutka/dtd/Scanner;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2, p2, p0}, Lcom/wutka/dtd/Scanner;-><init>(Ljava/io/Reader;ZLcom/wutka/dtd/EntityExpansion;)V

    iput-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    .line 94
    new-instance v1, Lcom/wutka/dtd/DTD;

    invoke-direct {v1}, Lcom/wutka/dtd/DTD;-><init>()V

    iput-object v1, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    .line 95
    return-void
.end method


# virtual methods
.method public expandEntity(Ljava/lang/String;)Lcom/wutka/dtd/DTDEntity;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 965
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v0, v0, Lcom/wutka/dtd/DTD;->entities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDEntity;

    return-object v0
.end method

.method protected expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;
    .locals 6
    .param p1, "expected"    # Lcom/wutka/dtd/TokenType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 301
    .local v0, "token":Lcom/wutka/dtd/Token;
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    if-eq v1, p1, :cond_1

    .line 303
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, " instead of "

    const-string v3, "Expected "

    if-nez v1, :cond_0

    .line 305
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v5, p1, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v3, v3, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v5, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v5}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v5

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1

    .line 311
    :cond_0
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v5, p1, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v3, v3, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v5, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v5}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v5

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1

    .line 318
    :cond_1
    return-object v0
.end method

.method public parse()Lcom/wutka/dtd/DTD;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->parse(Z)Lcom/wutka/dtd/DTD;

    move-result-object v0

    return-object v0
.end method

.method public parse(Z)Lcom/wutka/dtd/DTD;
    .locals 8
    .param p1, "guessRootElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 119
    .local v0, "token":Lcom/wutka/dtd/Token;
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->EOF:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_6

    .line 124
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 126
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 128
    .local v2, "roots":Ljava/util/Hashtable;
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v3, v3, Lcom/wutka/dtd/DTD;->elements:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 130
    .local v3, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wutka/dtd/DTDElement;

    .line 133
    .local v4, "element":Lcom/wutka/dtd/DTDElement;
    iget-object v5, v4, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .end local v4    # "element":Lcom/wutka/dtd/DTDElement;
    goto :goto_1

    .line 136
    :cond_0
    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v4, v4, Lcom/wutka/dtd/DTD;->elements:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 137
    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 139
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wutka/dtd/DTDElement;

    .line 140
    .restart local v4    # "element":Lcom/wutka/dtd/DTDElement;
    iget-object v5, v4, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    instance-of v5, v5, Lcom/wutka/dtd/DTDContainer;

    if-nez v5, :cond_1

    goto :goto_2

    .line 142
    :cond_1
    iget-object v5, v4, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    check-cast v5, Lcom/wutka/dtd/DTDContainer;

    invoke-virtual {v5}, Lcom/wutka/dtd/DTDContainer;->getItemsVec()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 145
    .local v5, "items":Ljava/util/Enumeration;
    :goto_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 147
    iget-object v6, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wutka/dtd/DTDItem;

    invoke-virtual {p0, v2, v6, v7}, Lcom/wutka/dtd/DTDParser;->removeElements(Ljava/util/Hashtable;Lcom/wutka/dtd/DTD;Lcom/wutka/dtd/DTDItem;)V

    .line 148
    goto :goto_3

    .line 149
    .end local v4    # "element":Lcom/wutka/dtd/DTDElement;
    .end local v5    # "items":Ljava/util/Enumeration;
    :cond_2
    goto :goto_2

    .line 151
    :cond_3
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 153
    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 154
    .end local v3    # "e":Ljava/util/Enumeration;
    .local v1, "e":Ljava/util/Enumeration;
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wutka/dtd/DTDElement;

    iput-object v4, v3, Lcom/wutka/dtd/DTD;->rootElement:Lcom/wutka/dtd/DTDElement;

    .line 155
    goto :goto_4

    .line 158
    .end local v1    # "e":Ljava/util/Enumeration;
    .restart local v3    # "e":Ljava/util/Enumeration;
    :cond_4
    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iput-object v1, v4, Lcom/wutka/dtd/DTD;->rootElement:Lcom/wutka/dtd/DTDElement;

    .line 160
    .end local v2    # "roots":Ljava/util/Hashtable;
    .end local v3    # "e":Ljava/util/Enumeration;
    :goto_4
    goto :goto_5

    .line 163
    :cond_5
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iput-object v1, v2, Lcom/wutka/dtd/DTD;->rootElement:Lcom/wutka/dtd/DTDElement;

    .line 166
    :goto_5
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    return-object v1

    .line 121
    :cond_6
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseTopLevelElement()V

    .line 122
    goto/16 :goto_0
.end method

.method protected parseAttdef(Lcom/wutka/dtd/Scanner;Lcom/wutka/dtd/DTDElement;Lcom/wutka/dtd/DTDAttlist;)V
    .locals 7
    .param p1, "scanner"    # Lcom/wutka/dtd/Scanner;
    .param p2, "element"    # Lcom/wutka/dtd/DTDElement;
    .param p3, "attlist"    # Lcom/wutka/dtd/DTDAttlist;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 632
    sget-object v0, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 634
    .local v0, "token":Lcom/wutka/dtd/Token;
    new-instance v1, Lcom/wutka/dtd/DTDAttribute;

    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/DTDAttribute;-><init>(Ljava/lang/String;)V

    .line 636
    .local v1, "attr":Lcom/wutka/dtd/DTDAttribute;
    iget-object v2, p3, Lcom/wutka/dtd/DTDAttlist;->attributes:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 638
    iget-object v2, p2, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    iget-object v3, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 642
    iget-object v2, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_1

    .line 644
    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v3, "NOTATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseNotationList()Lcom/wutka/dtd/DTDNotationList;

    move-result-object v2

    iput-object v2, v1, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    .line 647
    goto :goto_0

    .line 650
    :cond_0
    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v2, v1, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    .line 652
    goto :goto_0

    .line 653
    :cond_1
    iget-object v2, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->LPAREN:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_2

    .line 655
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseEnumeration()Lcom/wutka/dtd/DTDEnumeration;

    move-result-object v2

    iput-object v2, v1, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    .line 658
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 660
    iget-object v2, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_6

    .line 662
    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 663
    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v3, "#FIXED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 665
    sget-object v2, Lcom/wutka/dtd/DTDDecl;->FIXED:Lcom/wutka/dtd/DTDDecl;

    iput-object v2, v1, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    .line 667
    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 668
    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v2, v1, Lcom/wutka/dtd/DTDAttribute;->defaultValue:Ljava/lang/String;

    .line 669
    goto :goto_1

    .line 670
    :cond_3
    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v3, "#REQUIRED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 672
    sget-object v2, Lcom/wutka/dtd/DTDDecl;->REQUIRED:Lcom/wutka/dtd/DTDDecl;

    iput-object v2, v1, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    .line 673
    goto :goto_1

    .line 674
    :cond_4
    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v3, "#IMPLIED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 676
    sget-object v2, Lcom/wutka/dtd/DTDDecl;->IMPLIED:Lcom/wutka/dtd/DTDDecl;

    iput-object v2, v1, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    .line 677
    goto :goto_1

    .line 680
    :cond_5
    new-instance v2, Lcom/wutka/dtd/DTDParseException;

    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid token in attribute declaration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v5

    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v2

    .line 685
    :cond_6
    iget-object v2, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_7

    .line 687
    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 688
    sget-object v2, Lcom/wutka/dtd/DTDDecl;->VALUE:Lcom/wutka/dtd/DTDDecl;

    iput-object v2, v1, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    .line 689
    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v2, v1, Lcom/wutka/dtd/DTDAttribute;->defaultValue:Ljava/lang/String;

    .line 691
    :cond_7
    :goto_1
    return-void
.end method

.method protected parseAttlist()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    sget-object v0, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 601
    .local v0, "token":Lcom/wutka/dtd/Token;
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v1, v1, Lcom/wutka/dtd/DTD;->elements:Ljava/util/Hashtable;

    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wutka/dtd/DTDElement;

    .line 603
    .local v1, "element":Lcom/wutka/dtd/DTDElement;
    new-instance v2, Lcom/wutka/dtd/DTDAttlist;

    iget-object v3, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/wutka/dtd/DTDAttlist;-><init>(Ljava/lang/String;)V

    .line 605
    .local v2, "attlist":Lcom/wutka/dtd/DTDAttlist;
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v3, v3, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 607
    if-nez v1, :cond_0

    .line 609
    new-instance v3, Lcom/wutka/dtd/DTDElement;

    iget-object v4, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/wutka/dtd/DTDElement;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 610
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v3, v3, Lcom/wutka/dtd/DTD;->elements:Ljava/util/Hashtable;

    iget-object v4, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_0
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 615
    :goto_0
    iget-object v3, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v4, Lcom/wutka/dtd/Scanner;->GT:Lcom/wutka/dtd/TokenType;

    if-eq v3, v4, :cond_1

    .line 617
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {p0, v3, v1, v2}, Lcom/wutka/dtd/DTDParser;->parseAttdef(Lcom/wutka/dtd/Scanner;Lcom/wutka/dtd/DTDElement;Lcom/wutka/dtd/DTDAttlist;)V

    .line 618
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 619
    goto :goto_0

    .line 625
    :cond_1
    sget-object v3, Lcom/wutka/dtd/Scanner;->GT:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v3}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    .line 626
    return-void
.end method

.method protected parseCP()Lcom/wutka/dtd/DTDItem;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 547
    .local v0, "token":Lcom/wutka/dtd/Token;
    const/4 v1, 0x0

    .line 549
    .local v1, "item":Lcom/wutka/dtd/DTDItem;
    iget-object v2, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_0

    .line 551
    new-instance v2, Lcom/wutka/dtd/DTDName;

    iget-object v3, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/wutka/dtd/DTDName;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 552
    goto :goto_0

    .line 553
    :cond_0
    iget-object v2, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->LPAREN:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_1

    .line 555
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseChoiceSequence()Lcom/wutka/dtd/DTDContainer;

    move-result-object v1

    .line 556
    nop

    .line 565
    :goto_0
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseCardinality()Lcom/wutka/dtd/DTDCardinal;

    move-result-object v2

    iput-object v2, v1, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 567
    return-object v1

    .line 559
    :cond_1
    new-instance v2, Lcom/wutka/dtd/DTDParseException;

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Found invalid token in sequence: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v5, v5, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v5}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v5

    iget-object v6, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v6}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v2
.end method

.method protected parseCardinality()Lcom/wutka/dtd/DTDCardinal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 575
    .local v0, "token":Lcom/wutka/dtd/Token;
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->QUES:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_0

    .line 577
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 578
    sget-object v1, Lcom/wutka/dtd/DTDCardinal;->OPTIONAL:Lcom/wutka/dtd/DTDCardinal;

    return-object v1

    .line 580
    :cond_0
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->ASTERISK:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_1

    .line 582
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 583
    sget-object v1, Lcom/wutka/dtd/DTDCardinal;->ZEROMANY:Lcom/wutka/dtd/DTDCardinal;

    return-object v1

    .line 585
    :cond_1
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->PLUS:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_2

    .line 587
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 588
    sget-object v1, Lcom/wutka/dtd/DTDCardinal;->ONEMANY:Lcom/wutka/dtd/DTDCardinal;

    return-object v1

    .line 592
    :cond_2
    sget-object v1, Lcom/wutka/dtd/DTDCardinal;->NONE:Lcom/wutka/dtd/DTDCardinal;

    return-object v1
.end method

.method protected parseChildren(Lcom/wutka/dtd/DTDElement;)V
    .locals 4
    .param p1, "element"    # Lcom/wutka/dtd/DTDElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseChoiceSequence()Lcom/wutka/dtd/DTDContainer;

    move-result-object v0

    .line 463
    .local v0, "choiceSeq":Lcom/wutka/dtd/DTDContainer;
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 465
    .local v1, "token":Lcom/wutka/dtd/Token;
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseCardinality()Lcom/wutka/dtd/DTDCardinal;

    move-result-object v2

    iput-object v2, v0, Lcom/wutka/dtd/DTDContainer;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 467
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->QUES:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_0

    .line 469
    sget-object v2, Lcom/wutka/dtd/DTDCardinal;->OPTIONAL:Lcom/wutka/dtd/DTDCardinal;

    iput-object v2, v0, Lcom/wutka/dtd/DTDContainer;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 470
    goto :goto_0

    .line 471
    :cond_0
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->ASTERISK:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_1

    .line 473
    sget-object v2, Lcom/wutka/dtd/DTDCardinal;->ZEROMANY:Lcom/wutka/dtd/DTDCardinal;

    iput-object v2, v0, Lcom/wutka/dtd/DTDContainer;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 474
    goto :goto_0

    .line 475
    :cond_1
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->PLUS:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_2

    .line 477
    sget-object v2, Lcom/wutka/dtd/DTDCardinal;->ONEMANY:Lcom/wutka/dtd/DTDCardinal;

    iput-object v2, v0, Lcom/wutka/dtd/DTDContainer;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 478
    goto :goto_0

    .line 481
    :cond_2
    sget-object v2, Lcom/wutka/dtd/DTDCardinal;->NONE:Lcom/wutka/dtd/DTDCardinal;

    iput-object v2, v0, Lcom/wutka/dtd/DTDContainer;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 484
    :goto_0
    iput-object v0, p1, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    .line 485
    return-void
.end method

.method protected parseChoiceSequence()Lcom/wutka/dtd/DTDContainer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    const/4 v0, 0x0

    .line 492
    .local v0, "separator":Lcom/wutka/dtd/TokenType;
    const/4 v1, 0x0

    .line 496
    .local v1, "cs":Lcom/wutka/dtd/DTDContainer;
    :goto_0
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseCP()Lcom/wutka/dtd/DTDItem;

    move-result-object v2

    .line 498
    .local v2, "item":Lcom/wutka/dtd/DTDItem;
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v3

    .line 500
    .local v3, "token":Lcom/wutka/dtd/Token;
    iget-object v4, v3, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v5, Lcom/wutka/dtd/Scanner;->PIPE:Lcom/wutka/dtd/TokenType;

    if-eq v4, v5, :cond_3

    iget-object v4, v3, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v5, Lcom/wutka/dtd/Scanner;->COMMA:Lcom/wutka/dtd/TokenType;

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 524
    :cond_0
    iget-object v4, v3, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v5, Lcom/wutka/dtd/Scanner;->RPAREN:Lcom/wutka/dtd/TokenType;

    if-ne v4, v5, :cond_2

    .line 526
    if-nez v1, :cond_1

    .line 528
    new-instance v4, Lcom/wutka/dtd/DTDSequence;

    invoke-direct {v4}, Lcom/wutka/dtd/DTDSequence;-><init>()V

    move-object v1, v4

    .line 530
    :cond_1
    invoke-virtual {v1, v2}, Lcom/wutka/dtd/DTDContainer;->add(Lcom/wutka/dtd/DTDItem;)V

    .line 531
    return-object v1

    .line 535
    :cond_2
    new-instance v4, Lcom/wutka/dtd/DTDParseException;

    iget-object v5, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v5}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Found invalid token in sequence: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, v3, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v7, v7, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v7}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v7

    iget-object v8, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v8}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v4

    .line 503
    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    iget-object v4, v3, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    if-ne v0, v4, :cond_4

    goto :goto_2

    .line 505
    :cond_4
    new-instance v4, Lcom/wutka/dtd/DTDParseException;

    iget-object v5, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v5}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v6}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v6

    iget-object v7, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v7}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v7

    const-string v8, "Can\'t mix separators in a choice/sequence"

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v4

    .line 509
    :cond_5
    :goto_2
    iget-object v0, v3, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    .line 511
    if-nez v1, :cond_7

    .line 513
    iget-object v4, v3, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v5, Lcom/wutka/dtd/Scanner;->PIPE:Lcom/wutka/dtd/TokenType;

    if-ne v4, v5, :cond_6

    .line 515
    new-instance v4, Lcom/wutka/dtd/DTDChoice;

    invoke-direct {v4}, Lcom/wutka/dtd/DTDChoice;-><init>()V

    move-object v1, v4

    .line 516
    goto :goto_3

    .line 519
    :cond_6
    new-instance v4, Lcom/wutka/dtd/DTDSequence;

    invoke-direct {v4}, Lcom/wutka/dtd/DTDSequence;-><init>()V

    move-object v1, v4

    .line 522
    :cond_7
    :goto_3
    invoke-virtual {v1, v2}, Lcom/wutka/dtd/DTDContainer;->add(Lcom/wutka/dtd/DTDItem;)V

    .line 523
    nop

    .line 539
    .end local v2    # "item":Lcom/wutka/dtd/DTDItem;
    .end local v3    # "token":Lcom/wutka/dtd/Token;
    goto/16 :goto_0
.end method

.method protected parseContentSpec(Lcom/wutka/dtd/Scanner;Lcom/wutka/dtd/DTDElement;)V
    .locals 6
    .param p1, "scanner"    # Lcom/wutka/dtd/Scanner;
    .param p2, "element"    # Lcom/wutka/dtd/DTDElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 356
    .local v0, "token":Lcom/wutka/dtd/Token;
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_2

    .line 358
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "EMPTY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    new-instance v1, Lcom/wutka/dtd/DTDEmpty;

    invoke-direct {v1}, Lcom/wutka/dtd/DTDEmpty;-><init>()V

    iput-object v1, p2, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    .line 361
    goto :goto_0

    .line 362
    :cond_0
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "ANY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    new-instance v1, Lcom/wutka/dtd/DTDAny;

    invoke-direct {v1}, Lcom/wutka/dtd/DTDAny;-><init>()V

    iput-object v1, p2, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    .line 365
    goto :goto_0

    .line 368
    :cond_1
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid token in entity content spec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v4

    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1

    .line 374
    :cond_2
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->LPAREN:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_5

    .line 376
    invoke-virtual {p1}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 378
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_4

    .line 380
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "#PCDATA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 382
    invoke-virtual {p0, p2}, Lcom/wutka/dtd/DTDParser;->parseMixed(Lcom/wutka/dtd/DTDElement;)V

    .line 383
    goto :goto_0

    .line 386
    :cond_3
    invoke-virtual {p0, p2}, Lcom/wutka/dtd/DTDParser;->parseChildren(Lcom/wutka/dtd/DTDElement;)V

    .line 388
    goto :goto_0

    .line 389
    :cond_4
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->LPAREN:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_5

    .line 391
    invoke-virtual {p0, p2}, Lcom/wutka/dtd/DTDParser;->parseChildren(Lcom/wutka/dtd/DTDElement;)V

    .line 394
    :cond_5
    :goto_0
    return-void
.end method

.method protected parseElement()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    sget-object v0, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v0}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 326
    .local v0, "name":Lcom/wutka/dtd/Token;
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v1, v1, Lcom/wutka/dtd/DTD;->elements:Ljava/util/Hashtable;

    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wutka/dtd/DTDElement;

    .line 328
    .local v1, "element":Lcom/wutka/dtd/DTDElement;
    if-nez v1, :cond_0

    .line 330
    new-instance v2, Lcom/wutka/dtd/DTDElement;

    iget-object v3, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/wutka/dtd/DTDElement;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 331
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v2, v2, Lcom/wutka/dtd/DTD;->elements:Ljava/util/Hashtable;

    iget-object v3, v1, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    goto :goto_0

    .line 333
    :cond_0
    iget-object v2, v1, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    if-nez v2, :cond_1

    .line 345
    :goto_0
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v2, v2, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 346
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {p0, v2, v1}, Lcom/wutka/dtd/DTDParser;->parseContentSpec(Lcom/wutka/dtd/Scanner;Lcom/wutka/dtd/DTDElement;)V

    .line 348
    sget-object v2, Lcom/wutka/dtd/Scanner;->GT:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v2}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    .line 349
    return-void

    .line 340
    :cond_1
    new-instance v2, Lcom/wutka/dtd/DTDParseException;

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Found second definition of element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v5}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v5

    iget-object v6, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v6}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v2
.end method

.method protected parseEntity()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 780
    const/4 v0, 0x0

    .line 782
    .local v0, "isParsed":Z
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 784
    .local v1, "name":Lcom/wutka/dtd/Token;
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->PERCENT:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_0

    .line 786
    const/4 v0, 0x1

    .line 787
    sget-object v2, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v2}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 788
    goto :goto_0

    .line 789
    :cond_0
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_3

    .line 796
    :goto_0
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v2, v2, Lcom/wutka/dtd/DTD;->entities:Ljava/util/Hashtable;

    iget-object v3, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wutka/dtd/DTDEntity;

    .line 798
    .local v2, "entity":Lcom/wutka/dtd/DTDEntity;
    const/4 v3, 0x0

    .line 800
    .local v3, "skip":Z
    if-nez v2, :cond_1

    .line 802
    new-instance v4, Lcom/wutka/dtd/DTDEntity;

    iget-object v5, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iget-object v6, p0, Lcom/wutka/dtd/DTDParser;->defaultLocation:Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lcom/wutka/dtd/DTDEntity;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v4

    .line 803
    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v4, v4, Lcom/wutka/dtd/DTD;->entities:Ljava/util/Hashtable;

    iget-object v5, v2, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    goto :goto_1

    .line 810
    :cond_1
    new-instance v4, Lcom/wutka/dtd/DTDEntity;

    iget-object v5, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iget-object v6, p0, Lcom/wutka/dtd/DTDParser;->defaultLocation:Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lcom/wutka/dtd/DTDEntity;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v4

    .line 811
    const/4 v3, 0x1

    .line 814
    :goto_1
    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v4, v4, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 816
    iput-boolean v0, v2, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    .line 818
    invoke-virtual {p0, v2}, Lcom/wutka/dtd/DTDParser;->parseEntityDef(Lcom/wutka/dtd/DTDEntity;)V

    .line 820
    iget-boolean v4, v2, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 822
    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    iget-object v5, v2, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    iget-object v6, v2, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/wutka/dtd/Scanner;->addEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :cond_2
    return-void

    .line 791
    .end local v2    # "entity":Lcom/wutka/dtd/DTDEntity;
    .end local v3    # "skip":Z
    :cond_3
    new-instance v2, Lcom/wutka/dtd/DTDParseException;

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v4

    iget-object v5, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v5}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v5

    const-string v6, "Invalid entity declaration"

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v2
.end method

.method protected parseEntityDef(Lcom/wutka/dtd/DTDEntity;)V
    .locals 6
    .param p1, "entity"    # Lcom/wutka/dtd/DTDEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 829
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 831
    .local v0, "token":Lcom/wutka/dtd/Token;
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_0

    .line 836
    iget-object v1, p1, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 838
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v1, p1, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    .line 839
    goto/16 :goto_1

    .line 841
    :cond_0
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_5

    .line 843
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "SYSTEM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    new-instance v1, Lcom/wutka/dtd/DTDSystem;

    invoke-direct {v1}, Lcom/wutka/dtd/DTDSystem;-><init>()V

    .line 846
    .local v1, "sys":Lcom/wutka/dtd/DTDSystem;
    sget-object v2, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v2}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 848
    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v2, v1, Lcom/wutka/dtd/DTDSystem;->system:Ljava/lang/String;

    .line 849
    iput-object v1, p1, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    .line 850
    .end local v1    # "sys":Lcom/wutka/dtd/DTDSystem;
    goto :goto_0

    .line 851
    :cond_1
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "PUBLIC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 853
    new-instance v1, Lcom/wutka/dtd/DTDPublic;

    invoke-direct {v1}, Lcom/wutka/dtd/DTDPublic;-><init>()V

    .line 855
    .local v1, "pub":Lcom/wutka/dtd/DTDPublic;
    sget-object v2, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v2}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 856
    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v2, v1, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    .line 857
    sget-object v2, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v2}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 858
    iget-object v2, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v2, v1, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    .line 859
    iput-object v1, p1, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    .line 860
    .end local v1    # "pub":Lcom/wutka/dtd/DTDPublic;
    nop

    .line 888
    :goto_0
    iget-boolean v1, p1, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    if-nez v1, :cond_3

    .line 890
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 891
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_3

    .line 893
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "NDATA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 901
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 903
    sget-object v1, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v1}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 905
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v1, p1, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    .line 906
    goto :goto_1

    .line 895
    :cond_2
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    const-string v5, "Invalid NData declaration"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1

    .line 916
    :cond_3
    :goto_1
    sget-object v1, Lcom/wutka/dtd/Scanner;->GT:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v1}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    .line 917
    return-void

    .line 863
    :cond_4
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    const-string v5, "Invalid External ID specification"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1

    .line 911
    :cond_5
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v4

    const-string v5, "Invalid entity definition"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1
.end method

.method protected parseEnumeration()Lcom/wutka/dtd/DTDEnumeration;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 742
    new-instance v0, Lcom/wutka/dtd/DTDEnumeration;

    invoke-direct {v0}, Lcom/wutka/dtd/DTDEnumeration;-><init>()V

    .line 746
    .local v0, "enumeration":Lcom/wutka/dtd/DTDEnumeration;
    :goto_0
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 748
    .local v1, "token":Lcom/wutka/dtd/Token;
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    const-string v4, "Invalid token in enumeration: "

    if-eq v2, v3, :cond_1

    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->NMTOKEN:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 751
    :cond_0
    new-instance v2, Lcom/wutka/dtd/DTDParseException;

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v5, v5, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v5}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v5

    iget-object v6, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v6}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v2

    .line 757
    :cond_1
    :goto_1
    iget-object v2, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wutka/dtd/DTDEnumeration;->add(Ljava/lang/String;)V

    .line 759
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 761
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->RPAREN:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_2

    .line 763
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 764
    return-object v0

    .line 766
    :cond_2
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->PIPE:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_3

    .line 773
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 774
    .end local v1    # "token":Lcom/wutka/dtd/Token;
    goto :goto_0

    .line 768
    .restart local v1    # "token":Lcom/wutka/dtd/Token;
    :cond_3
    new-instance v2, Lcom/wutka/dtd/DTDParseException;

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v5, v5, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v5}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v5

    iget-object v6, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v6}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v2
.end method

.method protected parseMixed(Lcom/wutka/dtd/DTDElement;)V
    .locals 8
    .param p1, "element"    # Lcom/wutka/dtd/DTDElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    const/4 v0, 0x1

    .line 405
    .local v0, "isPcdataOnly":Z
    new-instance v1, Lcom/wutka/dtd/DTDMixed;

    invoke-direct {v1}, Lcom/wutka/dtd/DTDMixed;-><init>()V

    .line 407
    .local v1, "mixed":Lcom/wutka/dtd/DTDMixed;
    new-instance v2, Lcom/wutka/dtd/DTDPCData;

    invoke-direct {v2}, Lcom/wutka/dtd/DTDPCData;-><init>()V

    invoke-virtual {v1, v2}, Lcom/wutka/dtd/DTDMixed;->add(Lcom/wutka/dtd/DTDItem;)V

    .line 409
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 411
    iput-object v1, p1, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    .line 415
    :goto_0
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v2

    .line 417
    .local v2, "token":Lcom/wutka/dtd/Token;
    iget-object v3, v2, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v4, Lcom/wutka/dtd/Scanner;->RPAREN:Lcom/wutka/dtd/TokenType;

    if-ne v3, v4, :cond_2

    .line 419
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v2

    .line 421
    iget-object v3, v2, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v4, Lcom/wutka/dtd/Scanner;->ASTERISK:Lcom/wutka/dtd/TokenType;

    if-ne v3, v4, :cond_0

    .line 423
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 424
    sget-object v3, Lcom/wutka/dtd/DTDCardinal;->ZEROMANY:Lcom/wutka/dtd/DTDCardinal;

    iput-object v3, v1, Lcom/wutka/dtd/DTDMixed;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 425
    goto :goto_1

    .line 428
    :cond_0
    if-eqz v0, :cond_1

    .line 435
    sget-object v3, Lcom/wutka/dtd/DTDCardinal;->NONE:Lcom/wutka/dtd/DTDCardinal;

    iput-object v3, v1, Lcom/wutka/dtd/DTDMixed;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 438
    :goto_1
    return-void

    .line 430
    :cond_1
    new-instance v3, Lcom/wutka/dtd/DTDParseException;

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid token in Mixed content type, \'*\' required after (#PCDATA|xx ...): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v2, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v6, v6, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v6}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v6

    iget-object v7, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v7}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v3

    .line 440
    :cond_2
    iget-object v3, v2, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v4, Lcom/wutka/dtd/Scanner;->PIPE:Lcom/wutka/dtd/TokenType;

    if-ne v3, v4, :cond_3

    .line 442
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v2

    .line 444
    new-instance v3, Lcom/wutka/dtd/DTDName;

    iget-object v4, v2, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/wutka/dtd/DTDName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/wutka/dtd/DTDMixed;->add(Lcom/wutka/dtd/DTDItem;)V

    .line 447
    const/4 v0, 0x0

    .line 448
    nop

    .line 455
    .end local v2    # "token":Lcom/wutka/dtd/Token;
    goto :goto_0

    .line 451
    .restart local v2    # "token":Lcom/wutka/dtd/Token;
    :cond_3
    new-instance v3, Lcom/wutka/dtd/DTDParseException;

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid token in Mixed content type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v2, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v6, v6, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v6}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v6

    iget-object v7, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v7}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v3
.end method

.method protected parseNotation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 922
    new-instance v0, Lcom/wutka/dtd/DTDNotation;

    invoke-direct {v0}, Lcom/wutka/dtd/DTDNotation;-><init>()V

    .line 924
    .local v0, "notation":Lcom/wutka/dtd/DTDNotation;
    sget-object v1, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v1}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 926
    .local v1, "token":Lcom/wutka/dtd/Token;
    iget-object v2, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v2, v0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    .line 928
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v2, v2, Lcom/wutka/dtd/DTD;->notations:Ljava/util/Hashtable;

    iget-object v3, v0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v2, v2, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 931
    sget-object v2, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v2}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 933
    iget-object v2, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v3, "SYSTEM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 935
    new-instance v2, Lcom/wutka/dtd/DTDSystem;

    invoke-direct {v2}, Lcom/wutka/dtd/DTDSystem;-><init>()V

    .line 936
    .local v2, "sys":Lcom/wutka/dtd/DTDSystem;
    sget-object v3, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v3}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 938
    iget-object v3, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v3, v2, Lcom/wutka/dtd/DTDSystem;->system:Ljava/lang/String;

    .line 939
    iput-object v2, v0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    .line 940
    .end local v2    # "sys":Lcom/wutka/dtd/DTDSystem;
    goto :goto_0

    .line 941
    :cond_0
    iget-object v2, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v3, "PUBLIC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 943
    new-instance v2, Lcom/wutka/dtd/DTDPublic;

    invoke-direct {v2}, Lcom/wutka/dtd/DTDPublic;-><init>()V

    .line 944
    .local v2, "pub":Lcom/wutka/dtd/DTDPublic;
    sget-object v3, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v3}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 946
    iget-object v3, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v3, v2, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    .line 947
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    .line 951
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 952
    iget-object v3, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v4, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    if-ne v3, v4, :cond_1

    .line 954
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 955
    iget-object v3, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    iput-object v3, v2, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    .line 958
    :cond_1
    iput-object v2, v0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    .line 960
    .end local v2    # "pub":Lcom/wutka/dtd/DTDPublic;
    :cond_2
    :goto_0
    sget-object v2, Lcom/wutka/dtd/Scanner;->GT:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v2}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    .line 961
    return-void
.end method

.method protected parseNotationList()Lcom/wutka/dtd/DTDNotationList;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    new-instance v0, Lcom/wutka/dtd/DTDNotationList;

    invoke-direct {v0}, Lcom/wutka/dtd/DTDNotationList;-><init>()V

    .line 698
    .local v0, "notation":Lcom/wutka/dtd/DTDNotationList;
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 699
    .local v1, "token":Lcom/wutka/dtd/Token;
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->LPAREN:Lcom/wutka/dtd/TokenType;

    const-string v4, "Invalid token in notation: "

    if-ne v2, v3, :cond_3

    .line 709
    :goto_0
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 711
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_2

    .line 719
    iget-object v2, v1, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wutka/dtd/DTDNotationList;->add(Ljava/lang/String;)V

    .line 721
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v1

    .line 723
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->RPAREN:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_0

    .line 725
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 726
    return-object v0

    .line 728
    :cond_0
    iget-object v2, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v3, Lcom/wutka/dtd/Scanner;->PIPE:Lcom/wutka/dtd/TokenType;

    if-ne v2, v3, :cond_1

    .line 735
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 736
    goto :goto_0

    .line 730
    :cond_1
    new-instance v2, Lcom/wutka/dtd/DTDParseException;

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v5, v5, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v5}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v5

    iget-object v6, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v6}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v2

    .line 713
    :cond_2
    new-instance v2, Lcom/wutka/dtd/DTDParseException;

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v5, v5, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v5}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v5

    iget-object v6, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v6}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v2

    .line 701
    :cond_3
    new-instance v2, Lcom/wutka/dtd/DTDParseException;

    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v1, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v5, v5, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v5}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v5

    iget-object v6, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v6}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v2
.end method

.method protected parseTopLevelElement()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 192
    .local v0, "token":Lcom/wutka/dtd/Token;
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->LTQUES:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_1

    .line 194
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    .local v1, "textBuffer":Ljava/lang/StringBuffer;
    :goto_0
    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Lcom/wutka/dtd/Scanner;->getUntil(C)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->peek()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 202
    iget-object v4, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v5, Lcom/wutka/dtd/Scanner;->GT:Lcom/wutka/dtd/TokenType;

    if-ne v4, v5, :cond_0

    .line 204
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v3}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    .line 205
    nop

    .line 209
    .end local v2    # "text":Ljava/lang/String;
    new-instance v2, Lcom/wutka/dtd/DTDProcessingInstruction;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/wutka/dtd/DTDProcessingInstruction;-><init>(Ljava/lang/String;)V

    .line 212
    .local v2, "instruct":Lcom/wutka/dtd/DTDProcessingInstruction;
    iget-object v3, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v3, v3, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 214
    return-void

    .line 207
    .local v2, "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 208
    .end local v2    # "text":Ljava/lang/String;
    goto :goto_0

    .line 216
    .end local v1    # "textBuffer":Ljava/lang/StringBuffer;
    :cond_1
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->CONDITIONAL:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_4

    .line 218
    sget-object v1, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v1}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 220
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "IGNORE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->skipConditional()V

    .line 223
    goto/16 :goto_1

    .line 226
    :cond_2
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "INCLUDE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/wutka/dtd/Scanner;->skipUntil(C)V

    .line 229
    goto/16 :goto_1

    .line 232
    :cond_3
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid token in conditional: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v4

    iget-object v5, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v5}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1

    .line 238
    :cond_4
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->ENDCONDITIONAL:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_5

    .line 241
    goto :goto_1

    .line 242
    :cond_5
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->COMMENT:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_6

    .line 244
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->dtd:Lcom/wutka/dtd/DTD;

    iget-object v1, v1, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    new-instance v2, Lcom/wutka/dtd/DTDComment;

    iget-object v3, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/wutka/dtd/DTDComment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 246
    goto :goto_1

    .line 247
    :cond_6
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    sget-object v2, Lcom/wutka/dtd/Scanner;->LTBANG:Lcom/wutka/dtd/TokenType;

    if-ne v1, v2, :cond_b

    .line 250
    sget-object v1, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v1}, Lcom/wutka/dtd/DTDParser;->expect(Lcom/wutka/dtd/TokenType;)Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 252
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "ELEMENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 254
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseElement()V

    .line 255
    goto :goto_1

    .line 256
    :cond_7
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "ATTLIST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 258
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseAttlist()V

    .line 259
    goto :goto_1

    .line 260
    :cond_8
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "ENTITY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 262
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseEntity()V

    .line 263
    goto :goto_1

    .line 264
    :cond_9
    iget-object v1, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    const-string v2, "NOTATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 266
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDParser;->parseNotation()V

    .line 267
    goto :goto_1

    .line 270
    :cond_a
    sget-object v1, Lcom/wutka/dtd/Scanner;->GT:Lcom/wutka/dtd/TokenType;

    invoke-virtual {p0, v1}, Lcom/wutka/dtd/DTDParser;->skipUntil(Lcom/wutka/dtd/TokenType;)V

    .line 272
    nop

    .line 283
    :goto_1
    return-void

    .line 278
    :cond_b
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    iget-object v2, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v2}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unexpected token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    iget-object v4, v4, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v4}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v4

    iget-object v5, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v5}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1
.end method

.method protected removeElements(Ljava/util/Hashtable;Lcom/wutka/dtd/DTD;Lcom/wutka/dtd/DTDItem;)V
    .locals 2
    .param p1, "h"    # Ljava/util/Hashtable;
    .param p2, "dtd"    # Lcom/wutka/dtd/DTD;
    .param p3, "item"    # Lcom/wutka/dtd/DTDItem;

    .line 171
    instance-of v0, p3, Lcom/wutka/dtd/DTDName;

    if-eqz v0, :cond_0

    .line 173
    move-object v0, p3

    check-cast v0, Lcom/wutka/dtd/DTDName;

    iget-object v0, v0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    goto :goto_1

    .line 175
    :cond_0
    instance-of v0, p3, Lcom/wutka/dtd/DTDContainer;

    if-eqz v0, :cond_1

    .line 177
    move-object v0, p3

    check-cast v0, Lcom/wutka/dtd/DTDContainer;

    invoke-virtual {v0}, Lcom/wutka/dtd/DTDContainer;->getItemsVec()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 179
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wutka/dtd/DTDItem;

    invoke-virtual {p0, p1, p2, v1}, Lcom/wutka/dtd/DTDParser;->removeElements(Ljava/util/Hashtable;Lcom/wutka/dtd/DTD;Lcom/wutka/dtd/DTDItem;)V

    .line 182
    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_1
    :goto_1
    return-void
.end method

.method protected skipUntil(Lcom/wutka/dtd/TokenType;)V
    .locals 2
    .param p1, "stopToken"    # Lcom/wutka/dtd/TokenType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v0}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 290
    .local v0, "token":Lcom/wutka/dtd/Token;
    :goto_0
    iget-object v1, v0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    if-eq v1, p1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/wutka/dtd/DTDParser;->scanner:Lcom/wutka/dtd/Scanner;

    invoke-virtual {v1}, Lcom/wutka/dtd/Scanner;->get()Lcom/wutka/dtd/Token;

    move-result-object v0

    .line 293
    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method
