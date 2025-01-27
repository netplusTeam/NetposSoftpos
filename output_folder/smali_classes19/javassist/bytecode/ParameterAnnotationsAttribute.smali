.class public Ljavassist/bytecode/ParameterAnnotationsAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "ParameterAnnotationsAttribute.java"


# static fields
.field public static final invisibleTag:Ljava/lang/String; = "RuntimeInvisibleParameterAnnotations"

.field public static final visibleTag:Ljava/lang/String; = "RuntimeVisibleParameterAnnotations"


# direct methods
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

    .line 95
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attrname"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/ParameterAnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attrname"    # Ljava/lang/String;
    .param p3, "info"    # [B

    .line 71
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 72
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

    .line 110
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljavassist/bytecode/AnnotationsAttribute$Copier;

    iget-object v1, p0, Ljavassist/bytecode/ParameterAnnotationsAttribute;->info:[B

    iget-object v2, p0, Ljavassist/bytecode/ParameterAnnotationsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, v1, v2, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Copier;-><init>([BLjavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 112
    .local v0, "copier":Ljavassist/bytecode/AnnotationsAttribute$Copier;
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->parameters()V

    .line 113
    new-instance v1, Ljavassist/bytecode/ParameterAnnotationsAttribute;

    invoke-virtual {p0}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->close()[B

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Ljavassist/bytecode/ParameterAnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-object v1

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAnnotations()[[Ljavassist/bytecode/annotation/Annotation;
    .locals 3

    .line 135
    :try_start_0
    new-instance v0, Ljavassist/bytecode/AnnotationsAttribute$Parser;

    iget-object v1, p0, Ljavassist/bytecode/ParameterAnnotationsAttribute;->info:[B

    iget-object v2, p0, Ljavassist/bytecode/ParameterAnnotationsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, v1, v2}, Ljavassist/bytecode/AnnotationsAttribute$Parser;-><init>([BLjavassist/bytecode/ConstPool;)V

    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Parser;->parseParameters()[[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getRefClasses(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->renameClass(Ljava/util/Map;)V

    return-void
.end method

.method public numParameters()I
    .locals 2

    .line 102
    iget-object v0, p0, Ljavassist/bytecode/ParameterAnnotationsAttribute;->info:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->renameClass(Ljava/util/Map;)V

    .line 180
    return-void
.end method

.method renameClass(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljavassist/bytecode/AnnotationsAttribute$Renamer;

    iget-object v1, p0, Ljavassist/bytecode/ParameterAnnotationsAttribute;->info:[B

    invoke-virtual {p0}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Ljavassist/bytecode/AnnotationsAttribute$Renamer;-><init>([BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 186
    .local v0, "renamer":Ljavassist/bytecode/AnnotationsAttribute$Renamer;
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->parameters()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    nop

    .line 190
    return-void

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setAnnotations([[Ljavassist/bytecode/annotation/Annotation;)V
    .locals 7
    .param p1, "params"    # [[Ljavassist/bytecode/annotation/Annotation;

    .line 152
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 153
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljavassist/bytecode/annotation/AnnotationsWriter;

    iget-object v2, p0, Ljavassist/bytecode/ParameterAnnotationsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v1, v0, v2}, Ljavassist/bytecode/annotation/AnnotationsWriter;-><init>(Ljava/io/OutputStream;Ljavassist/bytecode/ConstPool;)V

    .line 155
    .local v1, "writer":Ljavassist/bytecode/annotation/AnnotationsWriter;
    :try_start_0
    array-length v2, p1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->numParameters(I)V

    .line 156
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 157
    .local v4, "anno":[Ljavassist/bytecode/annotation/Annotation;
    array-length v5, v4

    invoke-virtual {v1, v5}, Ljavassist/bytecode/annotation/AnnotationsWriter;->numAnnotations(I)V

    .line 158
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 159
    aget-object v6, v4, v5

    invoke-virtual {v6, v1}, Ljavassist/bytecode/annotation/Annotation;->write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V

    .line 158
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 156
    .end local v4    # "anno":[Ljavassist/bytecode/annotation/Annotation;
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    nop

    .line 168
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->set([B)V

    .line 169
    return-void

    .line 164
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 200
    invoke-virtual {p0}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->getAnnotations()[[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0

    .line 201
    .local v0, "aa":[[Ljavassist/bytecode/annotation/Annotation;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 203
    .local v5, "a":[Ljavassist/bytecode/annotation/Annotation;
    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 204
    .local v8, "i":Ljavassist/bytecode/annotation/Annotation;
    invoke-virtual {v8}, Ljavassist/bytecode/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .end local v8    # "i":Ljavassist/bytecode/annotation/Annotation;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 206
    :cond_0
    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .end local v5    # "a":[Ljavassist/bytecode/annotation/Annotation;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " (?=,)|, $"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
