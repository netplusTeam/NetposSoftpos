.class public Lorg/apache/commons/lang/SerializationUtils;
.super Ljava/lang/Object;
.source "SerializationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static clone(Ljava/io/Serializable;)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/io/Serializable;

    .line 81
    invoke-static {p0}, Lorg/apache/commons/lang/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/SerializationUtils;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static deserialize(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 156
    if-eqz p0, :cond_1

    .line 159
    const/4 v0, 0x0

    .line 162
    .local v0, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 163
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    nop

    .line 172
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    goto :goto_0

    .line 174
    :catch_0
    move-exception v2

    .line 176
    :goto_0
    return-object v1

    .line 170
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 167
    :catch_1
    move-exception v1

    .line 168
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lorg/apache/commons/lang/SerializationException;

    invoke-direct {v2, v1}, Lorg/apache/commons/lang/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/ObjectInputStream;
    .end local p0    # "inputStream":Ljava/io/InputStream;
    throw v2

    .line 165
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "in":Ljava/io/ObjectInputStream;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 166
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lorg/apache/commons/lang/SerializationException;

    invoke-direct {v2, v1}, Lorg/apache/commons/lang/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/ObjectInputStream;
    .end local p0    # "inputStream":Ljava/io/InputStream;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "in":Ljava/io/ObjectInputStream;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    :goto_1
    if-eqz v0, :cond_0

    .line 172
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 174
    :catch_3
    move-exception v2

    goto :goto_3

    .line 176
    :cond_0
    :goto_2
    nop

    :goto_3
    throw v1

    .line 157
    .end local v0    # "in":Ljava/io/ObjectInputStream;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The InputStream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deserialize([B)Ljava/lang/Object;
    .locals 2
    .param p0, "objectData"    # [B

    .line 189
    if-eqz p0, :cond_0

    .line 192
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 193
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/apache/commons/lang/SerializationUtils;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 190
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The byte[] must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "obj"    # Ljava/io/Serializable;
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 102
    if-eqz p1, :cond_1

    .line 105
    const/4 v0, 0x0

    .line 108
    .local v0, "out":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 109
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    nop

    .line 116
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 121
    nop

    .line 122
    :goto_0
    return-void

    .line 114
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 111
    :catch_1
    move-exception v1

    .line 112
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lorg/apache/commons/lang/SerializationException;

    invoke-direct {v2, v1}, Lorg/apache/commons/lang/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    .end local p0    # "obj":Ljava/io/Serializable;
    .end local p1    # "outputStream":Ljava/io/OutputStream;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "out":Ljava/io/ObjectOutputStream;
    .restart local p0    # "obj":Ljava/io/Serializable;
    .restart local p1    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    if-eqz v0, :cond_0

    .line 116
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 118
    :catch_2
    move-exception v2

    goto :goto_3

    .line 120
    :cond_0
    :goto_2
    nop

    :goto_3
    throw v1

    .line 103
    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The OutputStream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static serialize(Ljava/io/Serializable;)[B
    .locals 2
    .param p0, "obj"    # Ljava/io/Serializable;

    .line 133
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 134
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/apache/commons/lang/SerializationUtils;->serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
