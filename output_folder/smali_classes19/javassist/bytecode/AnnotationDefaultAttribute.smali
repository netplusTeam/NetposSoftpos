.class public Ljavassist/bytecode/AnnotationDefaultAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "AnnotationDefaultAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "AnnotationDefault"


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AnnotationDefaultAttribute;-><init>(Ljavassist/bytecode/ConstPool;[B)V

    .line 93
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "n"    # I
    .param p3, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;[B)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "info"    # [B

    .line 81
    const-string v0, "AnnotationDefault"

    invoke-direct {p0, p1, v0, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 82
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 4
    .param p1, "newCp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljavassist/bytecode/AttributeInfo;"
        }
    .end annotation

    .line 109
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljavassist/bytecode/AnnotationsAttribute$Copier;

    iget-object v1, p0, Ljavassist/bytecode/AnnotationDefaultAttribute;->info:[B

    iget-object v2, p0, Ljavassist/bytecode/AnnotationDefaultAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, v1, v2, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Copier;-><init>([BLjavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 112
    .local v0, "copier":Ljavassist/bytecode/AnnotationsAttribute$Copier;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->memberValue(I)I

    .line 113
    new-instance v1, Ljavassist/bytecode/AnnotationDefaultAttribute;

    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->close()[B

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/AnnotationDefaultAttribute;-><init>(Ljavassist/bytecode/ConstPool;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDefaultValue()Ljavassist/bytecode/annotation/MemberValue;
    .locals 3

    .line 126
    :try_start_0
    new-instance v0, Ljavassist/bytecode/AnnotationsAttribute$Parser;

    iget-object v1, p0, Ljavassist/bytecode/AnnotationDefaultAttribute;->info:[B

    iget-object v2, p0, Ljavassist/bytecode/AnnotationDefaultAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, v1, v2}, Ljavassist/bytecode/AnnotationsAttribute$Parser;-><init>([BLjavassist/bytecode/ConstPool;)V

    .line 127
    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Parser;->parseMemberValue()Ljavassist/bytecode/annotation/MemberValue;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDefaultValue(Ljavassist/bytecode/annotation/MemberValue;)V
    .locals 4
    .param p1, "value"    # Ljavassist/bytecode/annotation/MemberValue;

    .line 141
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 142
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljavassist/bytecode/annotation/AnnotationsWriter;

    iget-object v2, p0, Ljavassist/bytecode/AnnotationDefaultAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v1, v0, v2}, Ljavassist/bytecode/annotation/AnnotationsWriter;-><init>(Ljava/io/OutputStream;Ljavassist/bytecode/ConstPool;)V

    .line 144
    .local v1, "writer":Ljavassist/bytecode/annotation/AnnotationsWriter;
    :try_start_0
    invoke-virtual {p1, v1}, Ljavassist/bytecode/annotation/MemberValue;->write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V

    .line 145
    invoke-virtual {v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    nop

    .line 151
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavassist/bytecode/AnnotationDefaultAttribute;->set([B)V

    .line 153
    return-void

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 160
    invoke-virtual {p0}, Ljavassist/bytecode/AnnotationDefaultAttribute;->getDefaultValue()Ljavassist/bytecode/annotation/MemberValue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
