.class Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;
.super Ljava/lang/Object;
.source "ByteBufferRandomAccessSource.java"

# interfaces
.implements Lcom/itextpdf/io/source/IRandomAccessSource;
.implements Ljava/io/Serializable;


# static fields
.field private static final CLEANER:Lcom/itextpdf/io/source/BufferCleaner;

.field public static final UNMAP_SUPPORTED:Z

.field private static final serialVersionUID:J = -0x148008892378d5b2L


# instance fields
.field private bufferMirror:[B

.field private transient byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 154
    new-instance v0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$1;

    invoke-direct {v0}, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "hack":Ljava/lang/Object;
    instance-of v1, v0, Lcom/itextpdf/io/source/BufferCleaner;

    if-eqz v1, :cond_0

    .line 160
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/io/source/BufferCleaner;

    sput-object v1, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->CLEANER:Lcom/itextpdf/io/source/BufferCleaner;

    .line 161
    const/4 v1, 0x1

    sput-boolean v1, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->UNMAP_SUPPORTED:Z

    goto :goto_0

    .line 163
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->CLEANER:Lcom/itextpdf/io/source/BufferCleaner;

    .line 164
    const/4 v1, 0x0

    sput-boolean v1, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->UNMAP_SUPPORTED:Z

    .line 166
    .end local v0    # "hack":Ljava/lang/Object;
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 80
    return-void
.end method

.method static synthetic access$000()Lcom/itextpdf/io/source/BufferCleaner;
    .locals 1

    .line 64
    sget-object v0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->CLEANER:Lcom/itextpdf/io/source/BufferCleaner;

    return-object v0
.end method

.method private static clean(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 175
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$2;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$2;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 203
    .local v0, "b":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 176
    .end local v0    # "b":Ljava/lang/Boolean;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 216
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 217
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->bufferMirror:[B

    if-eqz v0, :cond_0

    .line 218
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->bufferMirror:[B

    .line 221
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Ljava/io/NotSerializableException;

    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->bufferMirror:[B

    .line 212
    :cond_2
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 213
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

    .line 139
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->clean(Ljava/nio/ByteBuffer;)Z

    .line 140
    return-void
.end method

.method public get(J)I
    .locals 3
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 94
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 95
    return v0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    long-to-int v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v0, "b":B
    and-int/lit16 v1, v0, 0xff

    return v1

    .line 98
    .end local v0    # "b":B
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    return v0

    .line 91
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position must be less than Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(J[BII)I
    .locals 2
    .param p1, "position"    # J
    .param p3, "bytes"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 116
    const/4 v0, -0x1

    return v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 120
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 121
    .local v0, "bytesFromThisBuffer":I
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p3, p4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 123
    return v0

    .line 113
    .end local v0    # "bytesFromThisBuffer":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position must be less than Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public length()J
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
