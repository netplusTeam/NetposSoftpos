.class Ljavassist/bytecode/AnnotationsAttribute$Walker;
.super Ljava/lang/Object;
.source "AnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/AnnotationsAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Walker"
.end annotation


# instance fields
.field info:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "attrInfo"    # [B

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Ljavassist/bytecode/AnnotationsAttribute$Walker;->info:[B

    .line 359
    return-void
.end method


# virtual methods
.method final annotation(I)I
    .locals 3
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Walker;->info:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 389
    .local v0, "type":I
    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute$Walker;->info:[B

    add-int/lit8 v2, p1, 0x2

    invoke-static {v1, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v1

    .line 390
    .local v1, "numPairs":I
    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2, v0, v1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotation(III)I

    move-result v2

    return v2
.end method

.method annotation(III)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "type"    # I
    .param p3, "numPairs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 394
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 395
    invoke-virtual {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->memberValuePair(I)I

    move-result p1

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    .end local v0    # "j":I
    :cond_0
    return p1
.end method

.method final annotationArray(I)I
    .locals 2
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Walker;->info:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 377
    .local v0, "num":I
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotationArray(II)I

    move-result v1

    return v1
.end method

.method annotationArray(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 382
    invoke-virtual {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotation(I)I

    move-result p1

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "i":I
    :cond_0
    return p1
.end method

.method final annotationArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotationArray(I)I

    .line 373
    return-void
.end method

.method annotationMemberValue(I)I
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 465
    invoke-virtual {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotation(I)I

    move-result v0

    return v0
.end method

.method arrayMemberValue(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 473
    invoke-virtual {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->memberValue(I)I

    move-result p1

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    .end local v0    # "i":I
    :cond_0
    return p1
.end method

.method classMemberValue(II)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 459
    return-void
.end method

.method constValueMember(II)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 447
    return-void
.end method

.method enumMemberValue(III)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "typeNameIndex"    # I
    .param p3, "constNameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 454
    return-void
.end method

.method final memberValue(I)I
    .locals 4
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Walker;->info:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    .line 420
    .local v1, "tag":I
    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 421
    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 422
    .local v0, "typeNameIndex":I
    iget-object v2, p0, Ljavassist/bytecode/AnnotationsAttribute$Walker;->info:[B

    add-int/lit8 v3, p1, 0x3

    invoke-static {v2, v3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v2

    .line 423
    .local v2, "constNameIndex":I
    invoke-virtual {p0, p1, v0, v2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->enumMemberValue(III)V

    .line 424
    add-int/lit8 v3, p1, 0x5

    return v3

    .line 426
    .end local v0    # "typeNameIndex":I
    .end local v2    # "constNameIndex":I
    :cond_0
    const/16 v2, 0x63

    if-ne v1, v2, :cond_1

    .line 427
    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 428
    .local v0, "index":I
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->classMemberValue(II)V

    .line 429
    add-int/lit8 v2, p1, 0x3

    return v2

    .line 431
    .end local v0    # "index":I
    :cond_1
    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    .line 432
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotationMemberValue(I)I

    move-result v0

    return v0

    .line 433
    :cond_2
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_3

    .line 434
    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 435
    .local v0, "num":I
    add-int/lit8 v2, p1, 0x3

    invoke-virtual {p0, v2, v0}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->arrayMemberValue(II)I

    move-result v2

    return v2

    .line 438
    .end local v0    # "num":I
    :cond_3
    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 439
    .local v0, "index":I
    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->constValueMember(II)V

    .line 440
    add-int/lit8 v2, p1, 0x3

    return v2
.end method

.method final memberValuePair(I)I
    .locals 2
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Walker;->info:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 405
    .local v0, "nameIndex":I
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->memberValuePair(II)I

    move-result v1

    return v1
.end method

.method memberValuePair(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 412
    invoke-virtual {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->memberValue(I)I

    move-result v0

    return v0
.end method

.method final parameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Walker;->info:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 363
    .local v0, "numParam":I
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->parameters(II)V

    .line 364
    return-void
.end method

.method parameters(II)V
    .locals 1
    .param p1, "numParam"    # I
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 367
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 368
    invoke-virtual {p0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotationArray(I)I

    move-result p2

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
