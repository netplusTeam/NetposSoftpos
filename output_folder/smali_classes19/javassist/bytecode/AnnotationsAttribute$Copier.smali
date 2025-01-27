.class Ljavassist/bytecode/AnnotationsAttribute$Copier;
.super Ljavassist/bytecode/AnnotationsAttribute$Walker;
.source "AnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/AnnotationsAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Copier"
.end annotation


# instance fields
.field classnames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field destPool:Ljavassist/bytecode/ConstPool;

.field output:Ljava/io/ByteArrayOutputStream;

.field srcPool:Ljavassist/bytecode/ConstPool;

.field writer:Ljavassist/bytecode/annotation/AnnotationsWriter;


# direct methods
.method constructor <init>([BLjavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)V
    .locals 6
    .param p1, "info"    # [B
    .param p2, "src"    # Ljavassist/bytecode/ConstPool;
    .param p3, "dest"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljavassist/bytecode/ConstPool;",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 547
    .local p4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/AnnotationsAttribute$Copier;-><init>([BLjavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;Z)V

    .line 548
    return-void
.end method

.method constructor <init>([BLjavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;Z)V
    .locals 2
    .param p1, "info"    # [B
    .param p2, "src"    # Ljavassist/bytecode/ConstPool;
    .param p3, "dest"    # Ljavassist/bytecode/ConstPool;
    .param p5, "makeWriter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljavassist/bytecode/ConstPool;",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 551
    .local p4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;-><init>([B)V

    .line 552
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->output:Ljava/io/ByteArrayOutputStream;

    .line 553
    if-eqz p5, :cond_0

    .line 554
    new-instance v1, Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-direct {v1, v0, p3}, Ljavassist/bytecode/annotation/AnnotationsWriter;-><init>(Ljava/io/OutputStream;Ljavassist/bytecode/ConstPool;)V

    iput-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    .line 556
    :cond_0
    iput-object p2, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->srcPool:Ljavassist/bytecode/ConstPool;

    .line 557
    iput-object p3, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->destPool:Ljavassist/bytecode/ConstPool;

    .line 558
    iput-object p4, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->classnames:Ljava/util/Map;

    .line 559
    return-void
.end method


# virtual methods
.method annotation(III)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "type"    # I
    .param p3, "numPairs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 580
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {p0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->copyType(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Ljavassist/bytecode/annotation/AnnotationsWriter;->annotation(II)V

    .line 581
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotation(III)I

    move-result v0

    return v0
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

    .line 574
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->numAnnotations(I)V

    .line 575
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotationArray(II)I

    move-result v0

    return v0
.end method

.method annotationMemberValue(I)I
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 612
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->annotationValue()V

    .line 613
    invoke-super {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotationMemberValue(I)I

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

    .line 618
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->arrayValue(I)V

    .line 619
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->arrayMemberValue(II)I

    move-result v0

    return v0
.end method

.method classMemberValue(II)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 606
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {p0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->copyType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->classInfoIndex(I)V

    .line 607
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->classMemberValue(II)V

    .line 608
    return-void
.end method

.method close()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->close()V

    .line 563
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method constValueMember(II)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {p0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->copy(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(II)V

    .line 593
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->constValueMember(II)V

    .line 594
    return-void
.end method

.method copy(I)I
    .locals 3
    .param p1, "srcIndex"    # I

    .line 632
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->srcPool:Ljavassist/bytecode/ConstPool;

    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->destPool:Ljavassist/bytecode/ConstPool;

    iget-object v2, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->classnames:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method copyType(I)I
    .locals 3
    .param p1, "srcIndex"    # I

    .line 646
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->srcPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->classnames:Ljava/util/Map;

    invoke-static {v0, v1}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, "newName":Ljava/lang/String;
    iget-object v2, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->destPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method enumMemberValue(III)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "typeNameIndex"    # I
    .param p3, "constNameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 600
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {p0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->copyType(I)I

    move-result v1

    invoke-virtual {p0, p3}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->copy(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->enumConstValue(II)V

    .line 601
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->enumMemberValue(III)V

    .line 602
    return-void
.end method

.method memberValuePair(II)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {p0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Copier;->copy(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->memberValuePair(I)V

    .line 587
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->memberValuePair(II)I

    move-result v0

    return v0
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

    .line 568
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->numParameters(I)V

    .line 569
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->parameters(II)V

    .line 570
    return-void
.end method
