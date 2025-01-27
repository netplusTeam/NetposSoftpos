.class public final Ljdbm/recman/Provider;
.super Ljava/lang/Object;
.source "Provider.java"

# interfaces
.implements Ljdbm/RecordManagerProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRecordManager(Ljava/lang/String;Ljava/util/Properties;)Ljdbm/RecordManager;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "options"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljdbm/recman/BaseRecordManager;

    invoke-direct {v0, p1}, Ljdbm/recman/BaseRecordManager;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "recman":Ljdbm/RecordManager;
    const-string v1, "jdbm.disableTransactions"

    const-string v2, "false"

    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "value":Ljava/lang/String;
    const-string v2, "TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    move-object v2, v0

    check-cast v2, Ljdbm/recman/BaseRecordManager;

    invoke-virtual {v2}, Ljdbm/recman/BaseRecordManager;->disableTransactions()V

    .line 96
    :cond_0
    const-string v2, "jdbm.cache.size"

    const-string v3, "1000"

    invoke-virtual {p2, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 99
    .local v2, "cacheSize":I
    const-string v3, "jdbm.cache.type"

    const-string v4, "normal"

    invoke-virtual {p2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    new-instance v3, Ljdbm/helper/MRU;

    invoke-direct {v3, v2}, Ljdbm/helper/MRU;-><init>(I)V

    .line 103
    .local v3, "cache":Ljdbm/helper/MRU;
    new-instance v4, Ljdbm/recman/CacheRecordManager;

    invoke-direct {v4, v0, v3}, Ljdbm/recman/CacheRecordManager;-><init>(Ljdbm/RecordManager;Ljdbm/helper/CachePolicy;)V

    move-object v0, v4

    .line 104
    .end local v3    # "cache":Ljdbm/helper/MRU;
    nop

    .line 112
    return-object v0

    .line 104
    :cond_1
    const-string v3, "soft"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 106
    const-string v3, "weak"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Weak reference cache not implemented"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 109
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid cache type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Soft reference cache not implemented"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
