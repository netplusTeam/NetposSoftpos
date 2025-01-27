.class final Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;
.super Ljava/lang/Object;
.source "ProtobufDataEncoderContext.java"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoderContext;


# static fields
.field private static final DEFAULT_MAP_ENCODER:Lcom/google/firebase/encoders/ObjectEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MAP_KEY_DESC:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final MAP_VALUE_DESC:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final objectEncoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "*>;>;"
        }
    .end annotation
.end field

.field private output:Ljava/io/OutputStream;

.field private final valueEncoderContext:Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;

.field private final valueEncoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ValueEncoder<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->UTF_8:Ljava/nio/charset/Charset;

    .line 42
    nop

    .line 43
    const-string v0, "key"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/AtProtobuf;->builder()Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/AtProtobuf;->tag(I)Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/AtProtobuf;->build()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->MAP_KEY_DESC:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 45
    nop

    .line 46
    const-string/jumbo v0, "value"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/AtProtobuf;->builder()Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/AtProtobuf;->tag(I)Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/AtProtobuf;->build()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->MAP_VALUE_DESC:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 49
    new-instance v0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->DEFAULT_MAP_ENCODER:Lcom/google/firebase/encoders/ObjectEncoder;

    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ValueEncoder<",
            "*>;>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p2, "objectEncoders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/google/firebase/encoders/ObjectEncoder<*>;>;"
    .local p3, "valueEncoders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/google/firebase/encoders/ValueEncoder<*>;>;"
    .local p4, "fallbackEncoder":Lcom/google/firebase/encoders/ObjectEncoder;, "Lcom/google/firebase/encoders/ObjectEncoder<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;

    invoke-direct {v0, p0}, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;-><init>(Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;)V

    iput-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->valueEncoderContext:Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;

    .line 60
    iput-object p1, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->output:Ljava/io/OutputStream;

    .line 61
    iput-object p2, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->objectEncoders:Ljava/util/Map;

    .line 62
    iput-object p3, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->valueEncoders:Ljava/util/Map;

    .line 63
    iput-object p4, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 64
    return-void
.end method

.method private static allocateBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "length"    # I

    .line 379
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private determineSize(Lcom/google/firebase/encoders/ObjectEncoder;Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "TT;>;TT;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    .local p1, "encoder":Lcom/google/firebase/encoders/ObjectEncoder;, "Lcom/google/firebase/encoders/ObjectEncoder<TT;>;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;

    invoke-direct {v0}, Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;-><init>()V

    .line 359
    .local v0, "out":Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->output:Ljava/io/OutputStream;

    .line 360
    .local v1, "originalStream":Ljava/io/OutputStream;
    iput-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->output:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 362
    :try_start_1
    invoke-interface {p1, p2, p0}, Lcom/google/firebase/encoders/ObjectEncoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :try_start_2
    iput-object v1, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->output:Ljava/io/OutputStream;

    .line 365
    nop

    .line 366
    invoke-virtual {v0}, Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;->getLength()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 367
    invoke-virtual {v0}, Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;->close()V

    .line 366
    return-wide v2

    .line 364
    :catchall_0
    move-exception v2

    :try_start_3
    iput-object v1, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->output:Ljava/io/OutputStream;

    .line 365
    nop

    .end local v0    # "out":Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;
    .end local p1    # "encoder":Lcom/google/firebase/encoders/ObjectEncoder;, "Lcom/google/firebase/encoders/ObjectEncoder<TT;>;"
    .end local p2    # "obj":Ljava/lang/Object;, "TT;"
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 357
    .end local v1    # "originalStream":Ljava/io/OutputStream;
    .restart local v0    # "out":Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;
    .restart local p1    # "encoder":Lcom/google/firebase/encoders/ObjectEncoder;, "Lcom/google/firebase/encoders/ObjectEncoder<TT;>;"
    .restart local p2    # "obj":Ljava/lang/Object;, "TT;"
    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0}, Lcom/google/firebase/encoders/proto/LengthCountingOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private doEncode(Lcom/google/firebase/encoders/ObjectEncoder;Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;
    .locals 5
    .param p2, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p4, "skipDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "TT;>;",
            "Lcom/google/firebase/encoders/FieldDescriptor;",
            "TT;Z)",
            "Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    .local p1, "encoder":Lcom/google/firebase/encoders/ObjectEncoder;, "Lcom/google/firebase/encoders/ObjectEncoder<TT;>;"
    .local p3, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->determineSize(Lcom/google/firebase/encoders/ObjectEncoder;Ljava/lang/Object;)J

    move-result-wide v0

    .line 343
    .local v0, "size":J
    if-eqz p4, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 344
    return-object p0

    .line 347
    :cond_0
    invoke-static {p2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->getTag(Lcom/google/firebase/encoders/FieldDescriptor;)I

    move-result v2

    .line 348
    .local v2, "tag":I
    const/4 v3, 0x2

    .line 349
    .local v3, "wire":I
    shl-int/lit8 v4, v2, 0x3

    or-int/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt32(I)V

    .line 350
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt64(J)V

    .line 351
    invoke-interface {p1, p3, p0}, Lcom/google/firebase/encoders/ObjectEncoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    return-object p0
.end method

.method private doEncode(Lcom/google/firebase/encoders/ValueEncoder;Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;
    .locals 1
    .param p2, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p4, "skipDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/encoders/ValueEncoder<",
            "TT;>;",
            "Lcom/google/firebase/encoders/FieldDescriptor;",
            "TT;Z)",
            "Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    .local p1, "encoder":Lcom/google/firebase/encoders/ValueEncoder;, "Lcom/google/firebase/encoders/ValueEncoder<TT;>;"
    .local p3, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->valueEncoderContext:Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;

    invoke-virtual {v0, p2, p4}, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->resetContext(Lcom/google/firebase/encoders/FieldDescriptor;Z)V

    .line 374
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->valueEncoderContext:Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;

    invoke-interface {p1, p3, v0}, Lcom/google/firebase/encoders/ValueEncoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 375
    return-object p0
.end method

.method private static getProtobuf(Lcom/google/firebase/encoders/FieldDescriptor;)Lcom/google/firebase/encoders/proto/Protobuf;
    .locals 3
    .param p0, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;

    .line 391
    const-class v0, Lcom/google/firebase/encoders/proto/Protobuf;

    invoke-virtual {p0, v0}, Lcom/google/firebase/encoders/FieldDescriptor;->getProperty(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/proto/Protobuf;

    .line 392
    .local v0, "protobuf":Lcom/google/firebase/encoders/proto/Protobuf;
    if-eqz v0, :cond_0

    .line 395
    return-object v0

    .line 393
    :cond_0
    new-instance v1, Lcom/google/firebase/encoders/EncodingException;

    const-string v2, "Field has no @Protobuf config"

    invoke-direct {v1, v2}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getTag(Lcom/google/firebase/encoders/FieldDescriptor;)I
    .locals 3
    .param p0, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;

    .line 383
    const-class v0, Lcom/google/firebase/encoders/proto/Protobuf;

    invoke-virtual {p0, v0}, Lcom/google/firebase/encoders/FieldDescriptor;->getProperty(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/proto/Protobuf;

    .line 384
    .local v0, "protobuf":Lcom/google/firebase/encoders/proto/Protobuf;
    if-eqz v0, :cond_0

    .line 387
    invoke-interface {v0}, Lcom/google/firebase/encoders/proto/Protobuf;->tag()I

    move-result v1

    return v1

    .line 385
    :cond_0
    new-instance v1, Lcom/google/firebase/encoders/EncodingException;

    const-string v2, "Field has no @Protobuf config"

    invoke-direct {v1, v2}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$static$0(Ljava/util/Map$Entry;Lcom/google/firebase/encoders/ObjectEncoderContext;)V
    .locals 2
    .param p0, "o"    # Ljava/util/Map$Entry;
    .param p1, "ctx"    # Lcom/google/firebase/encoders/ObjectEncoderContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->MAP_KEY_DESC:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 52
    sget-object v0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->MAP_VALUE_DESC:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 53
    return-void
.end method

.method private writeVarInt32(I)V
    .locals 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    :goto_0
    and-int/lit8 v0, p1, -0x80

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->output:Ljava/io/OutputStream;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 401
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->output:Ljava/io/OutputStream;

    and-int/lit8 v1, p1, 0x7f

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 404
    return-void
.end method

.method private writeVarInt64(J)V
    .locals 4
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->output:Ljava/io/OutputStream;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 409
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->output:Ljava/io/OutputStream;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 412
    return-void
.end method


# virtual methods
.method public add(Lcom/google/firebase/encoders/FieldDescriptor;D)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;DZ)Lcom/google/firebase/encoders/ObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method add(Lcom/google/firebase/encoders/FieldDescriptor;DZ)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 4
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "value"    # D
    .param p4, "skipDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    if-eqz p4, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    .line 206
    return-object p0

    .line 208
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->getTag(Lcom/google/firebase/encoders/FieldDescriptor;)I

    move-result v0

    .line 209
    .local v0, "tag":I
    const/4 v1, 0x1

    .line 210
    .local v1, "wire":I
    shl-int/lit8 v2, v0, 0x3

    or-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt32(I)V

    .line 211
    iget-object v2, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->output:Ljava/io/OutputStream;

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 212
    return-object p0
.end method

.method public add(Lcom/google/firebase/encoders/FieldDescriptor;F)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;FZ)Lcom/google/firebase/encoders/ObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method add(Lcom/google/firebase/encoders/FieldDescriptor;FZ)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 4
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "value"    # F
    .param p3, "skipDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 225
    return-object p0

    .line 227
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->getTag(Lcom/google/firebase/encoders/FieldDescriptor;)I

    move-result v0

    .line 228
    .local v0, "tag":I
    const/4 v1, 0x5

    .line 229
    .local v1, "wire":I
    shl-int/lit8 v2, v0, 0x3

    or-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt32(I)V

    .line 230
    iget-object v2, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->output:Ljava/io/OutputStream;

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 231
    return-object p0
.end method

.method public bridge synthetic add(Lcom/google/firebase/encoders/FieldDescriptor;I)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;I)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Lcom/google/firebase/encoders/FieldDescriptor;J)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;J)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 5
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "skipDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    if-nez p2, :cond_0

    .line 107
    return-object p0

    .line 109
    :cond_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 110
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    .line 111
    .local v0, "seq":Ljava/lang/CharSequence;
    if-eqz p3, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 112
    return-object p0

    .line 114
    :cond_1
    invoke-static {p1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->getTag(Lcom/google/firebase/encoders/FieldDescriptor;)I

    move-result v1

    .line 115
    .local v1, "tag":I
    const/4 v2, 0x2

    .line 116
    .local v2, "wire":I
    shl-int/lit8 v3, v1, 0x3

    or-int/2addr v3, v2

    invoke-direct {p0, v3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt32(I)V

    .line 117
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 118
    .local v3, "bytes":[B
    array-length v4, v3

    invoke-direct {p0, v4}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt32(I)V

    .line 119
    iget-object v4, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->output:Ljava/io/OutputStream;

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 120
    return-object p0

    .line 122
    .end local v0    # "seq":Ljava/lang/CharSequence;
    .end local v1    # "tag":I
    .end local v2    # "wire":I
    .end local v3    # "bytes":[B
    :cond_2
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 124
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    .line 125
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 129
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, v3, v1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 130
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 131
    :cond_3
    return-object p0

    .line 134
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 136
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    .line 137
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 141
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v4, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->DEFAULT_MAP_ENCODER:Lcom/google/firebase/encoders/ObjectEncoder;

    invoke-direct {p0, v4, p1, v3, v1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->doEncode(Lcom/google/firebase/encoders/ObjectEncoder;Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    .line 142
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_1

    .line 143
    :cond_5
    return-object p0

    .line 146
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 147
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;DZ)Lcom/google/firebase/encoders/ObjectEncoderContext;

    move-result-object v0

    return-object v0

    .line 150
    :cond_7
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 151
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;FZ)Lcom/google/firebase/encoders/ObjectEncoderContext;

    move-result-object v0

    return-object v0

    .line 154
    :cond_8
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_9

    .line 155
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;JZ)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object v0

    return-object v0

    .line 158
    :cond_9
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 159
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;ZZ)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object v0

    return-object v0

    .line 162
    :cond_a
    instance-of v0, p2, [B

    if-eqz v0, :cond_c

    .line 163
    move-object v0, p2

    check-cast v0, [B

    .line 164
    .local v0, "bytes":[B
    if-eqz p3, :cond_b

    array-length v1, v0

    if-nez v1, :cond_b

    .line 165
    return-object p0

    .line 167
    :cond_b
    invoke-static {p1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->getTag(Lcom/google/firebase/encoders/FieldDescriptor;)I

    move-result v1

    .line 168
    .restart local v1    # "tag":I
    const/4 v2, 0x2

    .line 169
    .restart local v2    # "wire":I
    shl-int/lit8 v3, v1, 0x3

    or-int/2addr v3, v2

    invoke-direct {p0, v3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt32(I)V

    .line 170
    array-length v3, v0

    invoke-direct {p0, v3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt32(I)V

    .line 171
    iget-object v3, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->output:Ljava/io/OutputStream;

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 172
    return-object p0

    .line 176
    .end local v0    # "bytes":[B
    .end local v1    # "tag":I
    .end local v2    # "wire":I
    :cond_c
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->objectEncoders:Ljava/util/Map;

    .line 177
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/ObjectEncoder;

    .line 179
    .local v0, "objectEncoder":Lcom/google/firebase/encoders/ObjectEncoder;, "Lcom/google/firebase/encoders/ObjectEncoder<Ljava/lang/Object;>;"
    if-eqz v0, :cond_d

    .line 180
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->doEncode(Lcom/google/firebase/encoders/ObjectEncoder;Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object v1

    return-object v1

    .line 183
    :cond_d
    iget-object v1, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->valueEncoders:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/encoders/ValueEncoder;

    .line 184
    .local v1, "valueEncoder":Lcom/google/firebase/encoders/ValueEncoder;, "Lcom/google/firebase/encoders/ValueEncoder<Ljava/lang/Object;>;"
    if-eqz v1, :cond_e

    .line 185
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->doEncode(Lcom/google/firebase/encoders/ValueEncoder;Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object v2

    return-object v2

    .line 188
    :cond_e
    instance-of v2, p2, Lcom/google/firebase/encoders/proto/ProtoEnum;

    if-eqz v2, :cond_f

    .line 189
    move-object v2, p2

    check-cast v2, Lcom/google/firebase/encoders/proto/ProtoEnum;

    invoke-interface {v2}, Lcom/google/firebase/encoders/proto/ProtoEnum;->getNumber()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;I)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object v2

    return-object v2

    .line 191
    :cond_f
    instance-of v2, p2, Ljava/lang/Enum;

    if-eqz v2, :cond_10

    .line 192
    move-object v2, p2

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;I)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object v2

    return-object v2

    .line 194
    :cond_10
    iget-object v2, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->doEncode(Lcom/google/firebase/encoders/ObjectEncoder;Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic add(Lcom/google/firebase/encoders/FieldDescriptor;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Z)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;D)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->of(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;D)Lcom/google/firebase/encoders/ObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;I)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-static {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->of(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;I)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;J)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-static {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->of(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;J)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-static {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->of(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-static {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->of(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Z)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/google/firebase/encoders/FieldDescriptor;I)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;
    .locals 1
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;IZ)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method add(Lcom/google/firebase/encoders/FieldDescriptor;IZ)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;
    .locals 3
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "value"    # I
    .param p3, "skipDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    .line 244
    return-object p0

    .line 246
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->getProtobuf(Lcom/google/firebase/encoders/FieldDescriptor;)Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v0

    .line 247
    .local v0, "protobuf":Lcom/google/firebase/encoders/proto/Protobuf;
    sget-object v1, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext$1;->$SwitchMap$com$google$firebase$encoders$proto$Protobuf$IntEncoding:[I

    invoke-interface {v0}, Lcom/google/firebase/encoders/proto/Protobuf;->intEncoding()Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 257
    :pswitch_0
    invoke-interface {v0}, Lcom/google/firebase/encoders/proto/Protobuf;->tag()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x5

    invoke-direct {p0, v1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt32(I)V

    .line 258
    iget-object v1, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->output:Ljava/io/OutputStream;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 253
    :pswitch_1
    invoke-interface {v0}, Lcom/google/firebase/encoders/proto/Protobuf;->tag()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt32(I)V

    .line 254
    shl-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p2, 0x1f

    xor-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt32(I)V

    .line 255
    goto :goto_0

    .line 249
    :pswitch_2
    invoke-interface {v0}, Lcom/google/firebase/encoders/proto/Protobuf;->tag()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt32(I)V

    .line 250
    invoke-direct {p0, p2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt32(I)V

    .line 251
    nop

    .line 261
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public add(Lcom/google/firebase/encoders/FieldDescriptor;J)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;
    .locals 1
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;JZ)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method add(Lcom/google/firebase/encoders/FieldDescriptor;JZ)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;
    .locals 5
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "value"    # J
    .param p4, "skipDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    if-eqz p4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 274
    return-object p0

    .line 276
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->getProtobuf(Lcom/google/firebase/encoders/FieldDescriptor;)Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v0

    .line 277
    .local v0, "protobuf":Lcom/google/firebase/encoders/proto/Protobuf;
    sget-object v1, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext$1;->$SwitchMap$com$google$firebase$encoders$proto$Protobuf$IntEncoding:[I

    invoke-interface {v0}, Lcom/google/firebase/encoders/proto/Protobuf;->intEncoding()Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 287
    :pswitch_0
    invoke-interface {v0}, Lcom/google/firebase/encoders/proto/Protobuf;->tag()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt32(I)V

    .line 288
    iget-object v1, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->output:Ljava/io/OutputStream;

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 283
    :pswitch_1
    invoke-interface {v0}, Lcom/google/firebase/encoders/proto/Protobuf;->tag()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt32(I)V

    .line 284
    shl-long v1, p2, v2

    const/16 v3, 0x3f

    shr-long v3, p2, v3

    xor-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt64(J)V

    .line 285
    goto :goto_0

    .line 279
    :pswitch_2
    invoke-interface {v0}, Lcom/google/firebase/encoders/proto/Protobuf;->tag()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt32(I)V

    .line 280
    invoke-direct {p0, p2, p3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->writeVarInt64(J)V

    .line 281
    nop

    .line 291
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public add(Lcom/google/firebase/encoders/FieldDescriptor;Z)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;
    .locals 1
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;ZZ)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method add(Lcom/google/firebase/encoders/FieldDescriptor;ZZ)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;
    .locals 1
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "value"    # Z
    .param p3, "skipDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;IZ)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method encode(Ljava/lang/Object;)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    if-nez p1, :cond_0

    .line 314
    return-object p0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->objectEncoders:Ljava/util/Map;

    .line 318
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/ObjectEncoder;

    .line 319
    .local v0, "objectEncoder":Lcom/google/firebase/encoders/ObjectEncoder;, "Lcom/google/firebase/encoders/ObjectEncoder<Ljava/lang/Object;>;"
    if-eqz v0, :cond_1

    .line 320
    invoke-interface {v0, p1, p0}, Lcom/google/firebase/encoders/ObjectEncoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    return-object p0

    .line 323
    :cond_1
    new-instance v1, Lcom/google/firebase/encoders/EncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No encoder for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public inline(Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->encode(Ljava/lang/Object;)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public nested(Lcom/google/firebase/encoders/FieldDescriptor;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 2
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    new-instance v0, Lcom/google/firebase/encoders/EncodingException;

    const-string v1, "nested() is not implemented for protobuf encoding."

    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nested(Ljava/lang/String;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    invoke-static {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->of(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->nested(Lcom/google/firebase/encoders/FieldDescriptor;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method
