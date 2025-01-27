.class public Ljavassist/bytecode/ClassFileWriter;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;,
        Ljavassist/bytecode/ClassFileWriter$MethodWriter;,
        Ljavassist/bytecode/ClassFileWriter$FieldWriter;,
        Ljavassist/bytecode/ClassFileWriter$AttributeWriter;
    }
.end annotation


# instance fields
.field private constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

.field private fields:Ljavassist/bytecode/ClassFileWriter$FieldWriter;

.field private methods:Ljavassist/bytecode/ClassFileWriter$MethodWriter;

.field private output:Ljavassist/bytecode/ByteStream;

.field superClass:I

.field thisClass:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljavassist/bytecode/ByteStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljavassist/bytecode/ByteStream;-><init>(I)V

    iput-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    .line 90
    const v1, -0x35014542    # -8346975.0f

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->writeInt(I)V

    .line 91
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 92
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 93
    new-instance v0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-direct {v0, v1}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;-><init>(Ljavassist/bytecode/ByteStream;)V

    iput-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    .line 94
    new-instance v1, Ljavassist/bytecode/ClassFileWriter$FieldWriter;

    invoke-direct {v1, v0}, Ljavassist/bytecode/ClassFileWriter$FieldWriter;-><init>(Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;)V

    iput-object v1, p0, Ljavassist/bytecode/ClassFileWriter;->fields:Ljavassist/bytecode/ClassFileWriter$FieldWriter;

    .line 95
    new-instance v0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;

    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-direct {v0, v1}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;-><init>(Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;)V

    iput-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->methods:Ljavassist/bytecode/ClassFileWriter$MethodWriter;

    .line 97
    return-void
.end method

.method static writeAttribute(Ljavassist/bytecode/ByteStream;Ljavassist/bytecode/ClassFileWriter$AttributeWriter;I)V
    .locals 2
    .param p0, "bs"    # Ljavassist/bytecode/ByteStream;
    .param p1, "aw"    # Ljavassist/bytecode/ClassFileWriter$AttributeWriter;
    .param p2, "attrCount"    # I

    .line 236
    if-nez p1, :cond_0

    .line 237
    invoke-virtual {p0, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 238
    return-void

    .line 241
    :cond_0
    invoke-interface {p1}, Ljavassist/bytecode/ClassFileWriter$AttributeWriter;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 242
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 244
    .local v0, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-interface {p1, v0}, Ljavassist/bytecode/ClassFileWriter$AttributeWriter;->write(Ljava/io/DataOutputStream;)V

    .line 245
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 248
    return-void
.end method


# virtual methods
.method public end(Ljava/io/DataOutputStream;III[ILjavassist/bytecode/ClassFileWriter$AttributeWriter;)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .param p2, "accessFlags"    # I
    .param p3, "thisClass"    # I
    .param p4, "superClass"    # I
    .param p5, "interfaces"    # [I
    .param p6, "aw"    # Ljavassist/bytecode/ClassFileWriter$AttributeWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->end()V

    .line 176
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeTo(Ljava/io/OutputStream;)V

    .line 177
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 178
    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 179
    invoke-virtual {p1, p4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 180
    const/4 v0, 0x0

    if-nez p5, :cond_0

    .line 181
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    .line 183
    :cond_0
    array-length v1, p5

    .line 184
    .local v1, "n":I
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 185
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 186
    aget v3, p5, v2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter;->fields:Ljavassist/bytecode/ClassFileWriter$FieldWriter;

    invoke-virtual {v1}, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 190
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter;->fields:Ljavassist/bytecode/ClassFileWriter$FieldWriter;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->write(Ljava/io/OutputStream;)V

    .line 192
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter;->methods:Ljavassist/bytecode/ClassFileWriter$MethodWriter;

    invoke-virtual {v1}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->numOfMethods()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 193
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter;->methods:Ljavassist/bytecode/ClassFileWriter$MethodWriter;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->write(Ljava/io/OutputStream;)V

    .line 194
    if-nez p6, :cond_2

    .line 195
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_2

    .line 197
    :cond_2
    invoke-interface {p6}, Ljavassist/bytecode/ClassFileWriter$AttributeWriter;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 198
    invoke-interface {p6, p1}, Ljavassist/bytecode/ClassFileWriter$AttributeWriter;->write(Ljava/io/DataOutputStream;)V

    .line 200
    :goto_2
    return-void
.end method

.method public end(III[ILjavassist/bytecode/ClassFileWriter$AttributeWriter;)[B
    .locals 5
    .param p1, "accessFlags"    # I
    .param p2, "thisClass"    # I
    .param p3, "superClass"    # I
    .param p4, "interfaces"    # [I
    .param p5, "aw"    # Ljavassist/bytecode/ClassFileWriter$AttributeWriter;

    .line 129
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->end()V

    .line 130
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 131
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 132
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p3}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 133
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 134
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    goto :goto_1

    .line 136
    :cond_0
    array-length v1, p4

    .line 137
    .local v1, "n":I
    iget-object v2, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 138
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 139
    iget-object v3, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    aget v4, p4, v2

    invoke-virtual {v3, v4}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    iget-object v2, p0, Ljavassist/bytecode/ClassFileWriter;->fields:Ljavassist/bytecode/ClassFileWriter$FieldWriter;

    invoke-virtual {v2}, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->dataSize()I

    move-result v2

    iget-object v3, p0, Ljavassist/bytecode/ClassFileWriter;->methods:Ljavassist/bytecode/ClassFileWriter$MethodWriter;

    invoke-virtual {v3}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->dataSize()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 144
    :try_start_0
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    iget-object v2, p0, Ljavassist/bytecode/ClassFileWriter;->fields:Ljavassist/bytecode/ClassFileWriter$FieldWriter;

    invoke-virtual {v2}, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 145
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter;->fields:Ljavassist/bytecode/ClassFileWriter$FieldWriter;

    iget-object v2, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ClassFileWriter$FieldWriter;->write(Ljava/io/OutputStream;)V

    .line 147
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    iget-object v2, p0, Ljavassist/bytecode/ClassFileWriter;->methods:Ljavassist/bytecode/ClassFileWriter$MethodWriter;

    invoke-virtual {v2}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->numOfMethods()I

    move-result v2

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 148
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter;->methods:Ljavassist/bytecode/ClassFileWriter$MethodWriter;

    iget-object v2, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 150
    :catch_0
    move-exception v1

    :goto_2
    nop

    .line 152
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-static {v1, p5, v0}, Ljavassist/bytecode/ClassFileWriter;->writeAttribute(Ljavassist/bytecode/ByteStream;Ljavassist/bytecode/ClassFileWriter$AttributeWriter;I)V

    .line 153
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0}, Ljavassist/bytecode/ByteStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getConstPool()Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;
    .locals 1

    .line 102
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    return-object v0
.end method

.method public getFieldWriter()Ljavassist/bytecode/ClassFileWriter$FieldWriter;
    .locals 1

    .line 107
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->fields:Ljavassist/bytecode/ClassFileWriter$FieldWriter;

    return-object v0
.end method

.method public getMethodWriter()Ljavassist/bytecode/ClassFileWriter$MethodWriter;
    .locals 1

    .line 112
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter;->methods:Ljavassist/bytecode/ClassFileWriter$MethodWriter;

    return-object v0
.end method
