.class Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;
.super Ljava/io/InputStream;
.source "HkdfStreamingPrf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HkdfInputStream"
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private ctr:I

.field private final input:[B

.field private mac:Ljavax/crypto/Mac;

.field private prk:[B

.field final synthetic this$0:Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;[B)V
    .locals 0
    .param p2, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            "this$0",
            "input"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->this$0:Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 68
    const/4 p1, -0x1

    iput p1, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->ctr:I

    .line 69
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->input:[B

    .line 70
    return-void
.end method

.method private initialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    :try_start_0
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MAC:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->this$0:Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;->access$000(Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;)Lcom/google/crypto/tink/subtle/Enums$HashType;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;->access$100(Lcom/google/crypto/tink/subtle/Enums$HashType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->mac:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    nop

    .line 79
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->this$0:Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;->access$200(Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->this$0:Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;->access$200(Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;)[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->mac:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->this$0:Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;->access$200(Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->this$0:Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;->access$000(Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;)Lcom/google/crypto/tink/subtle/Enums$HashType;

    move-result-object v3

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;->access$100(Lcom/google/crypto/tink/subtle/Enums$HashType;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->mac:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->this$0:Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;->access$000(Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;)Lcom/google/crypto/tink/subtle/Enums$HashType;

    move-result-object v3

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;->access$100(Lcom/google/crypto/tink/subtle/Enums$HashType;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 86
    :goto_1
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->mac:Ljavax/crypto/Mac;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->this$0:Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;->access$300(Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 87
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->prk:[B

    .line 88
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 90
    iput v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->ctr:I

    .line 91
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Creating HMac failed"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private updateBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->mac:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->prk:[B

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->this$0:Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;->access$000(Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;)Lcom/google/crypto/tink/subtle/Enums$HashType;

    move-result-object v3

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;->access$100(Lcom/google/crypto/tink/subtle/Enums$HashType;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 97
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 98
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->mac:Ljavax/crypto/Mac;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 99
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->mac:Ljavax/crypto/Mac;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->input:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 100
    iget v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->ctr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->ctr:I

    .line 101
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->mac:Ljavax/crypto/Mac;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->update(B)V

    .line 102
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 104
    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 109
    .local v1, "oneByte":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->read([BII)I

    move-result v3

    .line 110
    .local v3, "ret":I
    if-ne v3, v0, :cond_0

    .line 111
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 112
    :cond_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 113
    return v3

    .line 115
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Reading failed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "dst"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dst"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "totalRead":I
    :try_start_0
    iget v1, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->ctr:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->initialize()V

    .line 132
    :cond_0
    :goto_0
    if-ge v0, p3, :cond_3

    .line 134
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    iget v1, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->ctr:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    .line 137
    return v0

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->updateBuffer()V

    .line 142
    :cond_2
    sub-int v1, p3, v0

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 143
    .local v1, "toRead":I
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    add-int/2addr p2, v1

    .line 145
    add-int/2addr v0, v1

    .line 146
    .end local v1    # "toRead":I
    goto :goto_0

    .line 150
    :cond_3
    nop

    .line 151
    return v0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/security/GeneralSecurityException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf$HkdfInputStream;->mac:Ljavax/crypto/Mac;

    .line 149
    new-instance v2, Ljava/io/IOException;

    const-string v3, "HkdfInputStream failed"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
