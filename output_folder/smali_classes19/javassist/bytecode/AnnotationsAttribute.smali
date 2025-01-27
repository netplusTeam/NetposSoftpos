.class public Ljavassist/bytecode/AnnotationsAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "AnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/AnnotationsAttribute$Parser;,
        Ljavassist/bytecode/AnnotationsAttribute$Copier;,
        Ljavassist/bytecode/AnnotationsAttribute$Renamer;,
        Ljavassist/bytecode/AnnotationsAttribute$Walker;
    }
.end annotation


# static fields
.field public static final invisibleTag:Ljava/lang/String; = "RuntimeInvisibleAnnotations"

.field public static final visibleTag:Ljava/lang/String; = "RuntimeVisibleAnnotations"


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

    .line 166
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attrname"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/AnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 158
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attrname"    # Ljava/lang/String;
    .param p3, "info"    # [B

    .line 142
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 143
    return-void
.end method


# virtual methods
.method public addAnnotation(Ljavassist/bytecode/annotation/Annotation;)V
    .locals 5
    .param p1, "annotation"    # Ljavassist/bytecode/annotation/Annotation;

    .line 217
    invoke-virtual {p1}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p0}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v1

    .line 219
    .local v1, "annotations":[Ljavassist/bytecode/annotation/Annotation;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 220
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    aput-object p1, v1, v2

    .line 222
    invoke-virtual {p0, v1}, Ljavassist/bytecode/AnnotationsAttribute;->setAnnotations([Ljavassist/bytecode/annotation/Annotation;)V

    .line 223
    return-void

    .line 219
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v2    # "i":I
    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljavassist/bytecode/annotation/Annotation;

    .line 228
    .local v2, "newlist":[Ljavassist/bytecode/annotation/Annotation;
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    array-length v3, v1

    aput-object p1, v2, v3

    .line 230
    invoke-virtual {p0, v2}, Ljavassist/bytecode/AnnotationsAttribute;->setAnnotations([Ljavassist/bytecode/annotation/Annotation;)V

    .line 231
    return-void
.end method

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

    .line 181
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljavassist/bytecode/AnnotationsAttribute$Copier;

    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute;->info:[B

    iget-object v2, p0, Ljavassist/bytecode/AnnotationsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, v1, v2, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Copier;-><init>([BLjavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 183
    .local v0, "copier":Ljavassist/bytecode/AnnotationsAttribute$Copier;
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->annotationArray()V

    .line 184
    new-instance v1, Ljavassist/bytecode/AnnotationsAttribute;

    invoke-virtual {p0}, Ljavassist/bytecode/AnnotationsAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->close()[B

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Ljavassist/bytecode/AnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAnnotation(Ljava/lang/String;)Ljavassist/bytecode/annotation/Annotation;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .line 201
    invoke-virtual {p0}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0

    .line 202
    .local v0, "annotations":[Ljavassist/bytecode/annotation/Annotation;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 203
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    aget-object v2, v0, v1

    return-object v2

    .line 202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAnnotations()[Ljavassist/bytecode/annotation/Annotation;
    .locals 3

    .line 270
    :try_start_0
    new-instance v0, Ljavassist/bytecode/AnnotationsAttribute$Parser;

    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute;->info:[B

    iget-object v2, p0, Ljavassist/bytecode/AnnotationsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, v1, v2}, Ljavassist/bytecode/AnnotationsAttribute$Parser;-><init>([BLjavassist/bytecode/ConstPool;)V

    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Parser;->parseAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

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

    .line 335
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute;->renameClass(Ljava/util/Map;)V

    return-void
.end method

.method public numAnnotations()I
    .locals 2

    .line 173
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public removeAnnotation(Ljava/lang/String;)Z
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .line 243
    invoke-virtual {p0}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0

    .line 244
    .local v0, "annotations":[Ljavassist/bytecode/annotation/Annotation;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 245
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    array-length v2, v0

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    new-array v2, v2, [Ljavassist/bytecode/annotation/Annotation;

    .line 247
    .local v2, "newlist":[Ljavassist/bytecode/annotation/Annotation;
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    array-length v3, v0

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    .line 249
    add-int/lit8 v3, v1, 0x1

    array-length v5, v0

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-static {v0, v3, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    :cond_0
    invoke-virtual {p0, v2}, Ljavassist/bytecode/AnnotationsAttribute;->setAnnotations([Ljavassist/bytecode/annotation/Annotation;)V

    .line 253
    return v4

    .line 244
    .end local v2    # "newlist":[Ljavassist/bytecode/annotation/Annotation;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v1    # "i":I
    :cond_2
    return v3
.end method

.method renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .line 319
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 320
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {p0, v0}, Ljavassist/bytecode/AnnotationsAttribute;->renameClass(Ljava/util/Map;)V

    .line 322
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

    .line 326
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljavassist/bytecode/AnnotationsAttribute$Renamer;

    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute;->info:[B

    invoke-virtual {p0}, Ljavassist/bytecode/AnnotationsAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Ljavassist/bytecode/AnnotationsAttribute$Renamer;-><init>([BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 328
    .local v0, "renamer":Ljavassist/bytecode/AnnotationsAttribute$Renamer;
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->annotationArray()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    nop

    .line 332
    return-void

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setAnnotation(Ljavassist/bytecode/annotation/Annotation;)V
    .locals 2
    .param p1, "annotation"    # Ljavassist/bytecode/annotation/Annotation;

    .line 310
    const/4 v0, 0x1

    new-array v0, v0, [Ljavassist/bytecode/annotation/Annotation;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/AnnotationsAttribute;->setAnnotations([Ljavassist/bytecode/annotation/Annotation;)V

    .line 311
    return-void
.end method

.method public setAnnotations([Ljavassist/bytecode/annotation/Annotation;)V
    .locals 5
    .param p1, "annotations"    # [Ljavassist/bytecode/annotation/Annotation;

    .line 285
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 286
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljavassist/bytecode/annotation/AnnotationsWriter;

    iget-object v2, p0, Ljavassist/bytecode/AnnotationsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v1, v0, v2}, Ljavassist/bytecode/annotation/AnnotationsWriter;-><init>(Ljava/io/OutputStream;Ljavassist/bytecode/ConstPool;)V

    .line 288
    .local v1, "writer":Ljavassist/bytecode/annotation/AnnotationsWriter;
    :try_start_0
    array-length v2, p1

    .line 289
    .local v2, "n":I
    invoke-virtual {v1, v2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->numAnnotations(I)V

    .line 290
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 291
    aget-object v4, p1, v3

    invoke-virtual {v4, v1}, Ljavassist/bytecode/annotation/Annotation;->write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 293
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v2    # "n":I
    nop

    .line 299
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavassist/bytecode/AnnotationsAttribute;->set([B)V

    .line 300
    return-void

    .line 295
    :catch_0
    move-exception v2

    .line 296
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 342
    invoke-virtual {p0}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0

    .line 343
    .local v0, "a":[Ljavassist/bytecode/annotation/Annotation;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 345
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 346
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljavassist/bytecode/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    array-length v2, v0

    if-eq v3, v2, :cond_0

    .line 348
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_0
    move v2, v3

    goto :goto_0

    .line 351
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
