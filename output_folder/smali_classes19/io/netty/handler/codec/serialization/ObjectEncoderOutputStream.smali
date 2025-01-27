.class public Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;
.super Ljava/io/OutputStream;
.source "ObjectEncoderOutputStream.java"

# interfaces
.implements Ljava/io/ObjectOutput;


# instance fields
.field private final estimatedLength:I

.field private final out:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 48
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "estimatedLength"    # I

    .line 66
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 67
    const-string v0, "out"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    const-string v0, "estimatedLength"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 70
    instance-of v0, p1, Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    .line 71
    move-object v0, p1

    check-cast v0, Ljava/io/DataOutputStream;

    iput-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    .line 75
    :goto_0
    iput p2, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->estimatedLength:I

    .line 76
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 106
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 111
    return-void
.end method

.method public final size()I
    .locals 1

    .line 114
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 101
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 125
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 120
    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 1
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 130
    return-void
.end method

.method public final writeByte(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 135
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public final writeChar(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 145
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public final writeDouble(D)V
    .locals 1
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 155
    return-void
.end method

.method public final writeFloat(F)V
    .locals 1
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 160
    return-void
.end method

.method public final writeInt(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 165
    return-void
.end method

.method public final writeLong(J)V
    .locals 1
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 170
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->estimatedLength:I

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 82
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    new-instance v1, Lio/netty/handler/codec/serialization/CompactObjectOutputStream;

    new-instance v2, Lio/netty/buffer/ByteBufOutputStream;

    invoke-direct {v2, v0}, Lio/netty/buffer/ByteBufOutputStream;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-direct {v1, v2}, Lio/netty/handler/codec/serialization/CompactObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    .local v1, "oout":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 88
    nop

    .line 90
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    .line 91
    .local v2, "objectSize":I
    invoke-virtual {p0, v2}, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->writeInt(I)V

    .line 92
    const/4 v3, 0x0

    invoke-virtual {v0, v3, p0, v2}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    nop

    .end local v1    # "oout":Ljava/io/ObjectOutputStream;
    .end local v2    # "objectSize":I
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 95
    nop

    .line 96
    return-void

    .line 87
    .restart local v1    # "oout":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 88
    nop

    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .end local p1    # "obj":Ljava/lang/Object;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    .end local v1    # "oout":Ljava/io/ObjectOutputStream;
    .restart local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "obj":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 95
    throw v1
.end method

.method public final writeShort(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 175
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lio/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 180
    return-void
.end method
