.class public Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;
.super Ljava/lang/Object;
.source "UriResolver.java"


# instance fields
.field private baseUrl:Ljava/net/URL;

.field private isLocalBaseUri:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->resolveBaseUrlOrPath(Ljava/lang/String;)V

    .line 77
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseUri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private baseUriAsUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "baseUriString"    # Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "baseAsUrl":Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, "baseUri":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    move-object v0, v2

    .line 160
    const-string v2, "file"

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->isLocalBaseUri:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "baseUri":Ljava/net/URI;
    :cond_0
    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 166
    :goto_0
    return-object v0
.end method

.method private encode(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "str"    # Ljava/lang/String;

    .line 195
    const-string v0, "\\"

    const-string v1, "/"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 196
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 197
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 200
    :cond_0
    const-string v0, "/*\\\\*"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 201
    return-object p2
.end method

.method private isPathRooted(Ljava/nio/file/Path;Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "str"    # Ljava/lang/String;

    .line 205
    invoke-interface {p1}, Ljava/nio/file/Path;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private resolveBaseUrlOrPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "base"    # Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->baseUriAsUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->baseUrl:Ljava/net/URL;

    .line 138
    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->uriAsFileUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->baseUrl:Ljava/net/URL;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->baseUrl:Ljava/net/URL;

    if-eqz v0, :cond_1

    .line 145
    return-void

    .line 143
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Invalid base URI: {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private uriAsFileUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .param p1, "baseUriString"    # Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "baseAsFileUrl":Ljava/net/URL;
    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 179
    .local v2, "path":Ljava/nio/file/Path;
    invoke-direct {p0, v2, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->isPathRooted(Ljava/nio/file/Path;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->encode(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "str":Ljava/lang/String;
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    move-object v0, v3

    .line 182
    .end local v1    # "str":Ljava/lang/String;
    goto :goto_0

    .line 183
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->encode(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "str":Ljava/lang/String;
    const-string v4, ""

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v4, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    .line 185
    .local v1, "base":Ljava/net/URL;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v0, v4

    .line 187
    .end local v1    # "base":Ljava/net/URL;
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->isLocalBaseUri:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v2    # "path":Ljava/nio/file/Path;
    goto :goto_1

    .line 188
    :catch_0
    move-exception v1

    .line 191
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getBaseUri()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->baseUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLocalBaseUri()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->isLocalBaseUri:Z

    return v0
.end method

.method public resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "resolvedUrl":Ljava/net/URL;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->isLocalBaseUri:Z

    if-eqz v1, :cond_1

    .line 101
    const-string v1, "file:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 107
    .local v1, "path":Ljava/nio/file/Path;
    invoke-interface {v1}, Ljava/nio/file/Path;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-interface {v1}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 111
    .end local v1    # "path":Ljava/nio/file/Path;
    :cond_0
    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 115
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 116
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->baseUrl:Ljava/net/URL;

    invoke-direct {v1, v2, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v0, v1

    .line 118
    :cond_2
    return-object v0
.end method
