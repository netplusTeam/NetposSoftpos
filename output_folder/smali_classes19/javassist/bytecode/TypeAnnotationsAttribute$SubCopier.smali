.class Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;
.super Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;
.source "TypeAnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/TypeAnnotationsAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubCopier"
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

.field srcPool:Ljavassist/bytecode/ConstPool;

.field writer:Ljavassist/bytecode/annotation/TypeAnnotationsWriter;


# direct methods
.method constructor <init>([BLjavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;Ljavassist/bytecode/annotation/TypeAnnotationsWriter;)V
    .locals 0
    .param p1, "attrInfo"    # [B
    .param p2, "src"    # Ljavassist/bytecode/ConstPool;
    .param p3, "dest"    # Ljavassist/bytecode/ConstPool;
    .param p5, "w"    # Ljavassist/bytecode/annotation/TypeAnnotationsWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljavassist/bytecode/ConstPool;",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljavassist/bytecode/annotation/TypeAnnotationsWriter;",
            ")V"
        }
    .end annotation

    .line 298
    .local p4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;-><init>([B)V

    .line 299
    iput-object p2, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->srcPool:Ljavassist/bytecode/ConstPool;

    .line 300
    iput-object p3, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->destPool:Ljavassist/bytecode/ConstPool;

    .line 301
    iput-object p4, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->classnames:Ljava/util/Map;

    .line 302
    iput-object p5, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->writer:Ljavassist/bytecode/annotation/TypeAnnotationsWriter;

    .line 303
    return-void
.end method


# virtual methods
.method catchTarget(II)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "exceptionTableIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->writer:Ljavassist/bytecode/annotation/TypeAnnotationsWriter;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->catchTarget(I)V

    .line 356
    return-void
.end method

.method emptyTarget(II)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "targetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->writer:Ljavassist/bytecode/annotation/TypeAnnotationsWriter;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->emptyTarget(I)V

    .line 328
    return-void
.end method

.method formalParameterTarget(II)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "formalParameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->writer:Ljavassist/bytecode/annotation/TypeAnnotationsWriter;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->formalParameterTarget(I)V

    .line 333
    return-void
.end method

.method localvarTarget(III)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "targetType"    # I
    .param p3, "tableLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->writer:Ljavassist/bytecode/annotation/TypeAnnotationsWriter;

    invoke-virtual {v0, p2, p3}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->localVarTarget(II)V

    .line 343
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->localvarTarget(III)I

    move-result v0

    return v0
.end method

.method localvarTarget(IIIII)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "targetType"    # I
    .param p3, "startPc"    # I
    .param p4, "length"    # I
    .param p5, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->writer:Ljavassist/bytecode/annotation/TypeAnnotationsWriter;

    invoke-virtual {v0, p3, p4, p5}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->localVarTargetTable(III)V

    .line 351
    return-void
.end method

.method offsetTarget(III)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "targetType"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->writer:Ljavassist/bytecode/annotation/TypeAnnotationsWriter;

    invoke-virtual {v0, p2, p3}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->offsetTarget(II)V

    .line 361
    return-void
.end method

.method supertypeTarget(II)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "superTypeIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->writer:Ljavassist/bytecode/annotation/TypeAnnotationsWriter;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->supertypeTarget(I)V

    .line 315
    return-void
.end method

.method throwsTarget(II)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "throwsTypeIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->writer:Ljavassist/bytecode/annotation/TypeAnnotationsWriter;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->throwsTarget(I)V

    .line 338
    return-void
.end method

.method typeArgumentTarget(IIII)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "targetType"    # I
    .param p3, "offset"    # I
    .param p4, "typeArgumentIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->writer:Ljavassist/bytecode/annotation/TypeAnnotationsWriter;

    invoke-virtual {v0, p2, p3, p4}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->typeArgumentTarget(III)V

    .line 368
    return-void
.end method

.method typeParameterBoundTarget(IIII)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "targetType"    # I
    .param p3, "typeParameterIndex"    # I
    .param p4, "boundIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->writer:Ljavassist/bytecode/annotation/TypeAnnotationsWriter;

    invoke-virtual {v0, p2, p3, p4}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->typeParameterBoundTarget(III)V

    .line 323
    return-void
.end method

.method typeParameterTarget(III)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "targetType"    # I
    .param p3, "typeParameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->writer:Ljavassist/bytecode/annotation/TypeAnnotationsWriter;

    invoke-virtual {v0, p2, p3}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->typeParameterTarget(II)V

    .line 310
    return-void
.end method

.method typePath(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "pathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->writer:Ljavassist/bytecode/annotation/TypeAnnotationsWriter;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->typePath(I)V

    .line 373
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->typePath(II)I

    move-result v0

    return v0
.end method

.method typePath(III)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "typePathKind"    # I
    .param p3, "typeArgumentIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->writer:Ljavassist/bytecode/annotation/TypeAnnotationsWriter;

    invoke-virtual {v0, p2, p3}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;->typePathPath(II)V

    .line 379
    return-void
.end method
