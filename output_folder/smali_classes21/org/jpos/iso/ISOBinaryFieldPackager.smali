.class public Lorg/jpos/iso/ISOBinaryFieldPackager;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "ISOBinaryFieldPackager.java"


# instance fields
.field private interpreter:Lorg/jpos/iso/BinaryInterpreter;

.field private prefixer:Lorg/jpos/iso/Prefixer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 41
    sget-object v0, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    iput-object v0, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 42
    sget-object v0, Lorg/jpos/iso/NullPrefixer;->INSTANCE:Lorg/jpos/iso/NullPrefixer;

    iput-object v0, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 43
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V
    .locals 0
    .param p1, "maxLength"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "interpreter"    # Lorg/jpos/iso/BinaryInterpreter;
    .param p4, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 56
    iput-object p3, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 57
    iput-object p4, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V
    .locals 0
    .param p1, "interpreter"    # Lorg/jpos/iso/BinaryInterpreter;
    .param p2, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 67
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 69
    iput-object p2, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 70
    return-void
.end method

.method private makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "operation"    # Ljava/lang/String;

    .line 175
    const-string v0, "unknown"

    .line 176
    .local v0, "fieldKey":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 180
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 183
    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 185
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Problem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected checkLength(II)V
    .locals 3
    .param p1, "len"    # I
    .param p2, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 200
    if-gt p1, p2, :cond_0

    .line 204
    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too long for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createComponent(I)Lorg/jpos/iso/ISOComponent;
    .locals 1
    .param p1, "fieldNumber"    # I

    .line 170
    new-instance v0, Lorg/jpos/iso/ISOBinaryField;

    invoke-direct {v0, p1}, Lorg/jpos/iso/ISOBinaryField;-><init>(I)V

    return-object v0
.end method

.method public getMaxPackedLength()I
    .locals 3

    .line 92
    iget-object v0, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    iget-object v1, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-virtual {p0}, Lorg/jpos/iso/ISOBinaryFieldPackager;->getLength()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 5
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 102
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getBytes()[B

    move-result-object v0

    .line 103
    .local v0, "data":[B
    iget-object v1, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v1

    .line 104
    .local v1, "packedLength":I
    if-nez v1, :cond_1

    array-length v2, v0

    invoke-virtual {p0}, Lorg/jpos/iso/ISOBinaryFieldPackager;->getLength()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v2, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binary data length not the same as the packager length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jpos/iso/ISOBinaryFieldPackager;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    throw v2

    .line 107
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    array-length v3, v0

    invoke-interface {v2, v3}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v2

    add-int/2addr v2, v1

    new-array v2, v2, [B

    .line 108
    .local v2, "ret":[B
    iget-object v3, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    array-length v4, v0

    invoke-interface {v3, v4, v2}, Lorg/jpos/iso/Prefixer;->encodeLength(I[B)V

    .line 109
    iget-object v3, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-interface {v3, v0, v2, v1}, Lorg/jpos/iso/BinaryInterpreter;->interpret([B[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-object v2

    .line 111
    .end local v0    # "data":[B
    .end local v1    # "packedLength":I
    .end local v2    # "ret":[B
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "packing"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOBinaryFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInterpreter(Lorg/jpos/iso/BinaryInterpreter;)V
    .locals 0
    .param p1, "interpreter"    # Lorg/jpos/iso/BinaryInterpreter;

    .line 78
    iput-object p1, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 79
    return-void
.end method

.method public setPrefixer(Lorg/jpos/iso/Prefixer;)V
    .locals 0
    .param p1, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 87
    iput-object p1, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 88
    return-void
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 4
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0, p2, p3}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v0

    .line 121
    .local v0, "len":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/jpos/iso/ISOBinaryFieldPackager;->getLength()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/iso/ISOBinaryFieldPackager;->getLength()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lorg/jpos/iso/ISOBinaryFieldPackager;->getLength()I

    move-result v1

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " too long. Max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jpos/iso/ISOBinaryFieldPackager;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    .end local p3    # "offset":I
    throw v1

    .line 128
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    .restart local p3    # "offset":I
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v1

    .line 129
    .local v1, "lenLen":I
    iget-object v2, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    add-int v3, p3, v1

    invoke-interface {v2, p2, v3, v0}, Lorg/jpos/iso/BinaryInterpreter;->uninterpret([BII)[B

    move-result-object v2

    .line 130
    .local v2, "unpacked":[B
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 131
    iget-object v3, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-interface {v3, v0}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v1

    return v3

    .line 132
    .end local v0    # "len":I
    .end local v1    # "lenLen":I
    .end local v2    # "unpacked":[B
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "unpacking"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOBinaryFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 6
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 144
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    .line 146
    .local v0, "lenLen":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lorg/jpos/iso/ISOBinaryFieldPackager;->getLength()I

    move-result v2

    .local v2, "len":I
    goto :goto_0

    .line 151
    .end local v2    # "len":I
    :cond_0
    iget-object v2, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/ISOBinaryFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v2

    .line 152
    .restart local v2    # "len":I
    invoke-virtual {p0}, Lorg/jpos/iso/ISOBinaryFieldPackager;->getLength()I

    move-result v3

    if-lez v3, :cond_2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lorg/jpos/iso/ISOBinaryFieldPackager;->getLength()I

    move-result v3

    if-gt v2, v3, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " too long. Max: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jpos/iso/ISOBinaryFieldPackager;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    throw v1

    .line 155
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "in":Ljava/io/InputStream;
    :cond_2
    :goto_0
    iget-object v3, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-interface {v3, v2}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v3

    .line 156
    .local v3, "packedLen":I
    iget-object v4, p0, Lorg/jpos/iso/ISOBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-virtual {p0, p2, v3}, Lorg/jpos/iso/ISOBinaryFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v5

    invoke-interface {v4, v5, v1, v2}, Lorg/jpos/iso/BinaryInterpreter;->uninterpret([BII)[B

    move-result-object v1

    .line 157
    .local v1, "unpacked":[B
    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0    # "lenLen":I
    .end local v1    # "unpacked":[B
    .end local v2    # "len":I
    .end local v3    # "packedLen":I
    nop

    .line 162
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Lorg/jpos/iso/ISOException;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "unpacking"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOBinaryFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
