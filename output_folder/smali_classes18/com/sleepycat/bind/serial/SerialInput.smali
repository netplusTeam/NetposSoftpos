.class public Lcom/sleepycat/bind/serial/SerialInput;
.super Lcom/sleepycat/util/ClassResolver$Stream;
.source "SerialInput.java"


# instance fields
.field private classCatalog:Lcom/sleepycat/bind/serial/ClassCatalog;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/sleepycat/bind/serial/ClassCatalog;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "classCatalog"    # Lcom/sleepycat/bind/serial/ClassCatalog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/bind/serial/SerialInput;-><init>(Ljava/io/InputStream;Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/ClassLoader;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "classCatalog"    # Lcom/sleepycat/bind/serial/ClassCatalog;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p3}, Lcom/sleepycat/util/ClassResolver$Stream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    .line 83
    iput-object p2, p0, Lcom/sleepycat/bind/serial/SerialInput;->classCatalog:Lcom/sleepycat/bind/serial/ClassCatalog;

    .line 84
    return-void
.end method


# virtual methods
.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/bind/serial/SerialInput;->readByte()B

    move-result v0

    .line 92
    .local v0, "len":B
    new-array v1, v0, [B

    .line 93
    .local v1, "id":[B
    invoke-virtual {p0, v1}, Lcom/sleepycat/bind/serial/SerialInput;->readFully([B)V

    .line 95
    iget-object v2, p0, Lcom/sleepycat/bind/serial/SerialInput;->classCatalog:Lcom/sleepycat/bind/serial/ClassCatalog;

    invoke-interface {v2, v1}, Lcom/sleepycat/bind/serial/ClassCatalog;->getClassFormat([B)Ljava/io/ObjectStreamClass;

    move-result-object v2
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 96
    .end local v0    # "len":B
    .end local v1    # "id":[B
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-static {v0}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
