.class public Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;
.super Ljava/lang/Object;
.source "ReadOnlyNamespaceContextBase.java"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# instance fields
.field private prefixes:[Ljava/lang/String;

.field private uris:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 3
    .param p1, "prefixArray"    # [Ljava/lang/String;
    .param p2, "uriArray"    # [Ljava/lang/String;
    .param p3, "size"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    .line 40
    new-array v1, p3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    .line 41
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget-object v0, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 117
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 118
    :cond_0
    return-object p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/bea/xml/stream/MXParser;

    invoke-direct {v0}, Lcom/bea/xml/stream/MXParser;-><init>()V

    .line 168
    .local v0, "p":Lcom/bea/xml/stream/MXParser;
    new-instance v1, Ljava/io/FileReader;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/MXParser;->setInput(Ljava/io/Reader;)V

    .line 169
    :goto_0
    invoke-virtual {v0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/bea/xml/stream/MXParser;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "context["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bea/xml/stream/MXParser;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Lcom/bea/xml/stream/MXParser;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v1

    const-string v2, "a"

    invoke-interface {v1, v2}, Ljavax/xml/namespace/NamespaceContext;->getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 173
    .local v1, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Found prefix:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 176
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 177
    goto :goto_0

    .line 178
    :cond_1
    return-void
.end method


# virtual methods
.method public getDefaultNameSpace()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 109
    iget-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 108
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 113
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 46
    if-eqz p1, :cond_6

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 50
    iget-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 49
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 54
    .end local v0    # "i":I
    :cond_1
    const-string/jumbo v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    return-object v0

    .line 56
    :cond_2
    const-string/jumbo v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 57
    const-string v0, "http://www.w3.org/2000/xmlns/"

    return-object v0

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 61
    iget-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_4

    .line 62
    iget-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 60
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 66
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Prefix may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 69
    if-eqz p1, :cond_a

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 75
    iget-object v0, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 76
    iget-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    iget-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 81
    .local v1, "prefix":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 82
    iget-object v2, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-le v2, v0, :cond_1

    .line 83
    iget-object v3, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    .line 84
    goto :goto_3

    .line 82
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 87
    .end local v2    # "j":I
    :cond_1
    const-string v2, ""

    return-object v2

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "j":I
    :goto_2
    if-le v2, v0, :cond_4

    .line 91
    iget-object v3, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    goto :goto_3

    .line 90
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 95
    .end local v2    # "j":I
    :cond_4
    return-object v1

    .line 75
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    :cond_6
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 99
    const-string/jumbo v0, "xml"

    return-object v0

    .line 101
    :cond_7
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 102
    const-string/jumbo v0, "xmlns"

    return-object v0

    .line 104
    :cond_8
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri may not be empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .line 122
    if-eqz p1, :cond_9

    .line 124
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 129
    .local v0, "s":Ljava/util/HashSet;
    iget-object v1, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_7

    .line 130
    iget-object v2, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "prefix":Ljava/lang/String;
    iget-object v3, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    goto :goto_4

    .line 138
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 139
    iget-object v3, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1
    if-le v3, v1, :cond_2

    .line 140
    iget-object v4, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-nez v4, :cond_1

    .line 141
    goto :goto_4

    .line 139
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 144
    .end local v3    # "j":I
    :cond_2
    goto :goto_3

    .line 146
    :cond_3
    iget-object v3, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "j":I
    :goto_2
    if-le v3, v1, :cond_5

    .line 147
    iget-object v4, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 148
    goto :goto_4

    .line 146
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 153
    .end local v3    # "j":I
    :cond_5
    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_6
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 155
    .end local v1    # "i":I
    :cond_7
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 125
    .end local v0    # "s":Ljava/util/HashSet;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri may not be empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    .local v0, "b":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 161
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->prefixes:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "<->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;->uris:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
