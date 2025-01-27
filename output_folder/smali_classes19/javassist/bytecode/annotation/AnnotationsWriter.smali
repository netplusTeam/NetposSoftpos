.class public Ljavassist/bytecode/annotation/AnnotationsWriter;
.super Ljava/lang/Object;
.source "AnnotationsWriter.java"


# instance fields
.field protected output:Ljava/io/OutputStream;

.field private pool:Ljavassist/bytecode/ConstPool;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljavassist/bytecode/ConstPool;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    .line 73
    iput-object p2, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    .line 74
    return-void
.end method


# virtual methods
.method public annotation(II)V
    .locals 0
    .param p1, "typeIndex"    # I
    .param p2, "numMemberValuePairs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    .line 139
    invoke-virtual {p0, p2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    .line 140
    return-void
.end method

.method public annotation(Ljava/lang/String;I)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "numMemberValuePairs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->annotation(II)V

    .line 124
    return-void
.end method

.method public annotationValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 333
    return-void
.end method

.method public arrayValue(I)V
    .locals 2
    .param p1, "numValues"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 347
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    .line 348
    return-void
.end method

.method public classInfoIndex(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 323
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    .line 324
    return-void
.end method

.method public classInfoIndex(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->classInfoIndex(I)V

    .line 313
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 89
    return-void
.end method

.method public constValueIndex(B)V
    .locals 2
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result v0

    const/16 v1, 0x42

    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    .line 187
    return-void
.end method

.method public constValueIndex(C)V
    .locals 2
    .param p1, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result v0

    const/16 v1, 0x43

    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    .line 197
    return-void
.end method

.method public constValueIndex(D)V
    .locals 2
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ConstPool;->addDoubleInfo(D)I

    move-result v0

    const/16 v1, 0x44

    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    .line 247
    return-void
.end method

.method public constValueIndex(F)V
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addFloatInfo(F)I

    move-result v0

    const/16 v1, 0x46

    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    .line 237
    return-void
.end method

.method public constValueIndex(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result v0

    const/16 v1, 0x49

    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    .line 217
    return-void
.end method

.method public constValueIndex(II)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 271
    invoke-virtual {p0, p2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    .line 272
    return-void
.end method

.method public constValueIndex(J)V
    .locals 2
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ConstPool;->addLongInfo(J)I

    move-result v0

    const/16 v1, 0x4a

    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    .line 227
    return-void
.end method

.method public constValueIndex(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x73

    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    .line 257
    return-void
.end method

.method public constValueIndex(S)V
    .locals 2
    .param p1, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result v0

    const/16 v1, 0x53

    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    .line 207
    return-void
.end method

.method public constValueIndex(Z)V
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result v0

    const/16 v1, 0x5a

    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    .line 177
    return-void
.end method

.method public enumConstValue(II)V
    .locals 2
    .param p1, "typeNameIndex"    # I
    .param p2, "constNameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 301
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    .line 302
    invoke-virtual {p0, p2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    .line 303
    return-void
.end method

.method public enumConstValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "constName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    .line 285
    invoke-virtual {v1, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v1

    .line 284
    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->enumConstValue(II)V

    .line 286
    return-void
.end method

.method public getConstPool()Ljavassist/bytecode/ConstPool;
    .locals 1

    .line 80
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    return-object v0
.end method

.method public memberValuePair(I)V
    .locals 0
    .param p1, "memberNameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    .line 167
    return-void
.end method

.method public memberValuePair(Ljava/lang/String;)V
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->memberValuePair(I)V

    .line 153
    return-void
.end method

.method public numAnnotations(I)V
    .locals 0
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->write16bit(I)V

    .line 109
    return-void
.end method

.method public numParameters(I)V
    .locals 1
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 99
    return-void
.end method

.method protected write16bit(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 352
    .local v0, "buf":[B
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 353
    iget-object v1, p0, Ljavassist/bytecode/annotation/AnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 354
    return-void
.end method
