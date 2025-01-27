.class public Lcom/sleepycat/bind/serial/SerialBinding;
.super Lcom/sleepycat/bind/serial/SerialBase;
.source "SerialBinding.java"

# interfaces
.implements Lcom/sleepycat/bind/EntryBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/bind/serial/SerialBase;",
        "Lcom/sleepycat/bind/EntryBinding<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private baseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private classCatalog:Lcom/sleepycat/bind/serial/ClassCatalog;


# direct methods
.method public constructor <init>(Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/Class;)V
    .locals 2
    .param p1, "classCatalog"    # Lcom/sleepycat/bind/serial/ClassCatalog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/serial/ClassCatalog;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/sleepycat/bind/serial/SerialBinding;, "Lcom/sleepycat/bind/serial/SerialBinding<TE;>;"
    .local p2, "baseClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Lcom/sleepycat/bind/serial/SerialBase;-><init>()V

    .line 78
    if-eqz p1, :cond_0

    .line 81
    iput-object p1, p0, Lcom/sleepycat/bind/serial/SerialBinding;->classCatalog:Lcom/sleepycat/bind/serial/ClassCatalog;

    .line 82
    iput-object p2, p0, Lcom/sleepycat/bind/serial/SerialBinding;->baseClass:Ljava/lang/Class;

    .line 83
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "classCatalog must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 7
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")TE;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/sleepycat/bind/serial/SerialBinding;, "Lcom/sleepycat/bind/serial/SerialBinding<TE;>;"
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v0

    .line 136
    .local v0, "length":I
    invoke-static {}, Lcom/sleepycat/bind/serial/SerialOutput;->getStreamHeader()[B

    move-result-object v1

    .line 137
    .local v1, "hdr":[B
    array-length v2, v1

    add-int/2addr v2, v0

    new-array v2, v2, [B

    .line 139
    .local v2, "bufWithHeader":[B
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v5

    array-length v6, v1

    invoke-static {v3, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    :try_start_0
    new-instance v3, Lcom/sleepycat/bind/serial/SerialInput;

    new-instance v5, Lcom/sleepycat/util/FastInputStream;

    array-length v6, v2

    invoke-direct {v5, v2, v4, v6}, Lcom/sleepycat/util/FastInputStream;-><init>([BII)V

    iget-object v4, p0, Lcom/sleepycat/bind/serial/SerialBinding;->classCatalog:Lcom/sleepycat/bind/serial/ClassCatalog;

    .line 147
    invoke-virtual {p0}, Lcom/sleepycat/bind/serial/SerialBinding;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v3, v5, v4, v6}, Lcom/sleepycat/bind/serial/SerialInput;-><init>(Ljava/io/InputStream;Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/ClassLoader;)V

    .line 148
    .local v3, "jin":Lcom/sleepycat/bind/serial/SerialInput;
    invoke-virtual {v3}, Lcom/sleepycat/bind/serial/SerialInput;->readObject()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 151
    .end local v3    # "jin":Lcom/sleepycat/bind/serial/SerialInput;
    :catch_0
    move-exception v3

    .line 152
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v3}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 149
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 150
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public final getBaseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/sleepycat/bind/serial/SerialBinding;, "Lcom/sleepycat/bind/serial/SerialBinding<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/bind/serial/SerialBinding;->baseClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 116
    .local p0, "this":Lcom/sleepycat/bind/serial/SerialBinding;, "Lcom/sleepycat/bind/serial/SerialBinding<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/bind/serial/SerialBinding;->classCatalog:Lcom/sleepycat/bind/serial/ClassCatalog;

    invoke-interface {v0}, Lcom/sleepycat/bind/serial/ClassCatalog;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 117
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 118
    return-object v0

    .line 120
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    return-object v1
.end method

.method public objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 6
    .param p2, "entry"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")V"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/sleepycat/bind/serial/SerialBinding;, "Lcom/sleepycat/bind/serial/SerialBinding<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/sleepycat/bind/serial/SerialBinding;->baseClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x29

    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data object class ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "Null value"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not an instance of binding\'s base class ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/bind/serial/SerialBinding;->baseClass:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/serial/SerialBinding;->getSerialOutput(Ljava/lang/Object;)Lcom/sleepycat/util/FastOutputStream;

    move-result-object v0

    .line 186
    .local v0, "fo":Lcom/sleepycat/util/FastOutputStream;
    :try_start_0
    new-instance v1, Lcom/sleepycat/bind/serial/SerialOutput;

    iget-object v2, p0, Lcom/sleepycat/bind/serial/SerialBinding;->classCatalog:Lcom/sleepycat/bind/serial/ClassCatalog;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/bind/serial/SerialOutput;-><init>(Ljava/io/OutputStream;Lcom/sleepycat/bind/serial/ClassCatalog;)V

    .line 187
    .local v1, "jos":Lcom/sleepycat/bind/serial/SerialOutput;
    invoke-virtual {v1, p1}, Lcom/sleepycat/bind/serial/SerialOutput;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "jos":Lcom/sleepycat/bind/serial/SerialOutput;
    nop

    .line 192
    invoke-static {}, Lcom/sleepycat/bind/serial/SerialOutput;->getStreamHeader()[B

    move-result-object v1

    .line 193
    .local v1, "hdr":[B
    invoke-virtual {v0}, Lcom/sleepycat/util/FastOutputStream;->getBufferBytes()[B

    move-result-object v2

    array-length v3, v1

    .line 194
    invoke-virtual {v0}, Lcom/sleepycat/util/FastOutputStream;->getBufferLength()I

    move-result v4

    array-length v5, v1

    sub-int/2addr v4, v5

    .line 193
    invoke-virtual {p2, v2, v3, v4}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V

    .line 195
    return-void

    .line 188
    .end local v1    # "hdr":[B
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
