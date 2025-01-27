.class public Lch/qos/logback/core/joran/spi/ConfigurationWatchList;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "ConfigurationWatchList.java"


# instance fields
.field fileWatchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field lastModifiedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mainURL:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->fileWatchList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->lastModifiedList:Ljava/util/List;

    return-void
.end method

.method private addAsFileToWatch(Ljava/net/URL;)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;

    .line 59
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->convertToFile(Ljava/net/URL;)Ljava/io/File;

    move-result-object v0

    .line 60
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->fileWatchList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->lastModifiedList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public addToWatchList(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .line 67
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->addAsFileToWatch(Ljava/net/URL;)V

    .line 68
    return-void
.end method

.method public buildClone()Lch/qos/logback/core/joran/spi/ConfigurationWatchList;
    .locals 3

    .line 34
    new-instance v0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    invoke-direct {v0}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;-><init>()V

    .line 35
    .local v0, "out":Lch/qos/logback/core/joran/spi/ConfigurationWatchList;
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->mainURL:Ljava/net/URL;

    iput-object v1, v0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->mainURL:Ljava/net/URL;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->fileWatchList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->fileWatchList:Ljava/util/List;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->lastModifiedList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->lastModifiedList:Ljava/util/List;

    .line 38
    return-object v0
.end method

.method public changeDetected()Z
    .locals 7

    .line 79
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->fileWatchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 80
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 81
    iget-object v2, p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->lastModifiedList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 82
    .local v2, "lastModified":J
    iget-object v4, p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->fileWatchList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 83
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    .line 84
    const/4 v5, 0x1

    return v5

    .line 80
    .end local v2    # "lastModified":J
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public clear()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->mainURL:Ljava/net/URL;

    .line 43
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->lastModifiedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->fileWatchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    return-void
.end method

.method convertToFile(Ljava/net/URL;)Ljava/io/File;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    .line 93
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "protocol":Ljava/lang/String;
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not of type file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->addInfo(Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCopyOfFileWatchList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->fileWatchList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMainURL()Ljava/net/URL;
    .locals 1

    .line 71
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->mainURL:Ljava/net/URL;

    return-object v0
.end method

.method public setMainURL(Ljava/net/URL;)V
    .locals 0
    .param p1, "mainURL"    # Ljava/net/URL;

    .line 53
    iput-object p1, p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->mainURL:Ljava/net/URL;

    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->addAsFileToWatch(Ljava/net/URL;)V

    .line 56
    :cond_0
    return-void
.end method
