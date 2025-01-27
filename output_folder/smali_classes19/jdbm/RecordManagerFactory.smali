.class public final Ljdbm/RecordManagerFactory;
.super Ljava/lang/Object;
.source "RecordManagerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRecordManager(Ljava/lang/String;)Ljdbm/RecordManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-static {p0, v0}, Ljdbm/RecordManagerFactory;->createRecordManager(Ljava/lang/String;Ljava/util/Properties;)Ljdbm/RecordManager;

    move-result-object v0

    return-object v0
.end method

.method public static createRecordManager(Ljava/lang/String;Ljava/util/Properties;)Ljdbm/RecordManager;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "options"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    const-string v0, "jdbm.provider"

    const-string v1, "jdbm.recman.Provider"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "provider":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .local v2, "clazz":Ljava/lang/Class;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljdbm/RecordManagerProvider;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v3

    .line 113
    .local v1, "factory":Ljdbm/RecordManagerProvider;
    nop

    .line 114
    invoke-interface {v1, p0, p1}, Ljdbm/RecordManagerProvider;->createRecordManager(Ljava/lang/String;Ljava/util/Properties;)Ljdbm/RecordManager;

    move-result-object v3

    return-object v3

    .line 107
    .end local v1    # "factory":Ljdbm/RecordManagerProvider;
    :catch_0
    move-exception v3

    .restart local v1    # "factory":Ljdbm/RecordManagerProvider;
    goto :goto_0

    .end local v1    # "factory":Ljdbm/RecordManagerProvider;
    .end local v2    # "clazz":Ljava/lang/Class;
    :catch_1
    move-exception v3

    move-object v2, v1

    .local v2, "factory":Ljdbm/RecordManagerProvider;
    move-object v7, v2

    move-object v1, v7

    .line 108
    .restart local v1    # "factory":Ljdbm/RecordManagerProvider;
    .local v2, "clazz":Ljava/lang/Class;
    .local v3, "except":Ljava/lang/Exception;
    :goto_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid record manager provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
