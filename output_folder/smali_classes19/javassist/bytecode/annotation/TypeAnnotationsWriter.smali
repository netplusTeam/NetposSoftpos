.class public Ljavassist/bytecode/annotation/TypeAnnotationsWriter;
.super Ljavassist/bytecode/annotation/AnnotationsWriter;
.source "TypeAnnotationsWriter.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljavassist/bytecode/ConstPool;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 23
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/annotation/AnnotationsWriter;-><init>(Ljava/io/OutputStream;Ljavassist/bytecode/ConstPool;)V

    .line 24
    return-void
.end method


# virtual methods
.method public catchTarget(I)V
    .locals 2
    .param p1, "exceptionTableIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 133
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->write16bit(I)V

    .line 134
    return-void
.end method

.method public emptyTarget(I)V
    .locals 1
    .param p1, "targetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 76
    return-void
.end method

.method public formalParameterTarget(I)V
    .locals 2
    .param p1, "formalParameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 86
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 87
    return-void
.end method

.method public localVarTarget(II)V
    .locals 1
    .param p1, "targetType"    # I
    .param p2, "tableLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 110
    invoke-virtual {p0, p2}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->write16bit(I)V

    .line 111
    return-void
.end method

.method public localVarTargetTable(III)V
    .locals 0
    .param p1, "startPc"    # I
    .param p2, "length"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->write16bit(I)V

    .line 121
    invoke-virtual {p0, p2}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->write16bit(I)V

    .line 122
    invoke-virtual {p0, p3}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->write16bit(I)V

    .line 123
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

    .line 33
    invoke-super {p0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->numAnnotations(I)V

    .line 34
    return-void
.end method

.method public offsetTarget(II)V
    .locals 1
    .param p1, "targetType"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 144
    invoke-virtual {p0, p2}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->write16bit(I)V

    .line 145
    return-void
.end method

.method public supertypeTarget(I)V
    .locals 2
    .param p1, "supertypeIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 55
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->write16bit(I)V

    .line 56
    return-void
.end method

.method public throwsTarget(I)V
    .locals 2
    .param p1, "throwsTypeIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 97
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->write16bit(I)V

    .line 98
    return-void
.end method

.method public typeArgumentTarget(III)V
    .locals 1
    .param p1, "targetType"    # I
    .param p2, "offset"    # I
    .param p3, "type_argument_index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 155
    invoke-virtual {p0, p2}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->write16bit(I)V

    .line 156
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write(I)V

    .line 157
    return-void
.end method

.method public typeParameterBoundTarget(III)V
    .locals 1
    .param p1, "targetType"    # I
    .param p2, "typeParameterIndex"    # I
    .param p3, "boundIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 66
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write(I)V

    .line 67
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write(I)V

    .line 68
    return-void
.end method

.method public typeParameterTarget(II)V
    .locals 1
    .param p1, "targetType"    # I
    .param p2, "typeParameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 44
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write(I)V

    .line 45
    return-void
.end method

.method public typePath(I)V
    .locals 1
    .param p1, "pathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 164
    return-void
.end method

.method public typePathPath(II)V
    .locals 1
    .param p1, "typePathKind"    # I
    .param p2, "typeArgumentIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 173
    iget-object v0, p0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write(I)V

    .line 174
    return-void
.end method
