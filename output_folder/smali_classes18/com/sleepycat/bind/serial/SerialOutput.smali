.class public Lcom/sleepycat/bind/serial/SerialOutput;
.super Ljava/io/ObjectOutputStream;
.source "SerialOutput.java"


# static fields
.field private static final STREAM_HEADER:[B


# instance fields
.field private classCatalog:Lcom/sleepycat/bind/serial/ClassCatalog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Lcom/sleepycat/bind/serial/SerialOutput;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/bind/serial/SerialOutput;-><init>(Ljava/io/OutputStream;Lcom/sleepycat/bind/serial/ClassCatalog;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    nop

    .line 62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sput-object v1, Lcom/sleepycat/bind/serial/SerialOutput;->STREAM_HEADER:[B

    .line 63
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    return-void

    .line 59
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/sleepycat/bind/serial/ClassCatalog;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "classCatalog"    # Lcom/sleepycat/bind/serial/ClassCatalog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    iput-object p2, p0, Lcom/sleepycat/bind/serial/SerialOutput;->classCatalog:Lcom/sleepycat/bind/serial/ClassCatalog;

    .line 86
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/serial/SerialOutput;->useProtocolVersion(I)V

    .line 87
    return-void
.end method

.method public static getStreamHeader()[B
    .locals 1

    .line 122
    sget-object v0, Lcom/sleepycat/bind/serial/SerialOutput;->STREAM_HEADER:[B

    return-object v0
.end method


# virtual methods
.method protected writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .locals 2
    .param p1, "classdesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/bind/serial/SerialOutput;->classCatalog:Lcom/sleepycat/bind/serial/ClassCatalog;

    invoke-interface {v0, p1}, Lcom/sleepycat/bind/serial/ClassCatalog;->getClassID(Ljava/io/ObjectStreamClass;)[B

    move-result-object v0

    .line 95
    .local v0, "id":[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/sleepycat/bind/serial/SerialOutput;->writeByte(I)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/serial/SerialOutput;->write([B)V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "id":[B
    nop

    .line 108
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v0}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 97
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 104
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-static {v0}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
