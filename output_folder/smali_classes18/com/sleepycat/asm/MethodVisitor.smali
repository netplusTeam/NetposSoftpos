.class public abstract Lcom/sleepycat/asm/MethodVisitor;
.super Ljava/lang/Object;
.source "MethodVisitor.java"


# instance fields
.field protected final api:I

.field protected mv:Lcom/sleepycat/asm/MethodVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/asm/MethodVisitor;-><init>(ILcom/sleepycat/asm/MethodVisitor;)V

    .line 79
    return-void
.end method

.method public constructor <init>(ILcom/sleepycat/asm/MethodVisitor;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "mv"    # Lcom/sleepycat/asm/MethodVisitor;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/high16 v0, 0x40000

    if-lt p1, v0, :cond_0

    const/high16 v0, 0x60000

    if-gt p1, v0, :cond_0

    .line 95
    iput p1, p0, Lcom/sleepycat/asm/MethodVisitor;->api:I

    .line 96
    iput-object p2, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    .line 97
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 150
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitAnnotationDefault()Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitAnnotationDefault()Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitAttribute(Lcom/sleepycat/asm/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lcom/sleepycat/asm/Attribute;

    .line 219
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/MethodVisitor;->visitAttribute(Lcom/sleepycat/asm/Attribute;)V

    .line 222
    :cond_0
    return-void
.end method

.method public visitCode()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 231
    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 880
    :cond_0
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_0
    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 311
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 313
    :cond_0
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 1
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 608
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/MethodVisitor;->visitIincInsn(II)V

    .line 611
    :cond_0
    return-void
.end method

.method public visitInsn(I)V
    .locals 1
    .param p1, "opcode"    # I

    .line 340
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 343
    :cond_0
    return-void
.end method

.method public visitInsnAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lcom/sleepycat/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 697
    iget v0, p0, Lcom/sleepycat/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 700
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/asm/MethodVisitor;->visitInsnAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 703
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 698
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public visitIntInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 364
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/MethodVisitor;->visitIntInsn(II)V

    .line 367
    :cond_0
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/asm/Handle;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lcom/sleepycat/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/asm/Handle;[Ljava/lang/Object;)V

    .line 510
    :cond_0
    return-void
.end method

.method public visitJumpInsn(ILcom/sleepycat/asm/Label;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "label"    # Lcom/sleepycat/asm/Label;

    .line 527
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 530
    :cond_0
    return-void
.end method

.method public visitLabel(Lcom/sleepycat/asm/Label;)V
    .locals 1
    .param p1, "label"    # Lcom/sleepycat/asm/Label;

    .line 540
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/MethodVisitor;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 543
    :cond_0
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .line 594
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 597
    :cond_0
    return-void
.end method

.method public visitLineNumber(ILcom/sleepycat/asm/Label;)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "start"    # Lcom/sleepycat/asm/Label;

    .line 851
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/MethodVisitor;->visitLineNumber(ILcom/sleepycat/asm/Label;)V

    .line 854
    :cond_0
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/asm/Label;Lcom/sleepycat/asm/Label;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lcom/sleepycat/asm/Label;
    .param p5, "end"    # Lcom/sleepycat/asm/Label;
    .param p6, "index"    # I

    .line 791
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 792
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/asm/Label;Lcom/sleepycat/asm/Label;I)V

    .line 794
    :cond_0
    return-void
.end method

.method public visitLocalVariableAnnotation(ILcom/sleepycat/asm/TypePath;[Lcom/sleepycat/asm/Label;[Lcom/sleepycat/asm/Label;[ILjava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 11
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lcom/sleepycat/asm/TypePath;
    .param p3, "start"    # [Lcom/sleepycat/asm/Label;
    .param p4, "end"    # [Lcom/sleepycat/asm/Label;
    .param p5, "index"    # [I
    .param p6, "desc"    # Ljava/lang/String;
    .param p7, "visible"    # Z

    .line 828
    move-object v0, p0

    iget v1, v0, Lcom/sleepycat/asm/MethodVisitor;->api:I

    const/high16 v2, 0x50000

    if-lt v1, v2, :cond_1

    .line 831
    iget-object v3, v0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v3, :cond_0

    .line 832
    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/sleepycat/asm/MethodVisitor;->visitLocalVariableAnnotation(ILcom/sleepycat/asm/TypePath;[Lcom/sleepycat/asm/Label;[Lcom/sleepycat/asm/Label;[ILjava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v1

    return-object v1

    .line 835
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 829
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method public visitLookupSwitchInsn(Lcom/sleepycat/asm/Label;[I[Lcom/sleepycat/asm/Label;)V
    .locals 1
    .param p1, "dflt"    # Lcom/sleepycat/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lcom/sleepycat/asm/Label;

    .line 645
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/asm/MethodVisitor;->visitLookupSwitchInsn(Lcom/sleepycat/asm/Label;[I[Lcom/sleepycat/asm/Label;)V

    .line 648
    :cond_0
    return-void
.end method

.method public visitMaxs(II)V
    .locals 1
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 866
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 869
    :cond_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 446
    iget v0, p0, Lcom/sleepycat/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 447
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 448
    .local v6, "itf":Z
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 449
    return-void

    .line 451
    .end local v6    # "itf":Z
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_2

    .line 452
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_2
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .line 476
    iget v0, p0, Lcom/sleepycat/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_2

    .line 477
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p5, v0, :cond_1

    .line 481
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void

    .line 478
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "INVOKESPECIAL/STATIC on interfaces require ASM 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v2, :cond_3

    .line 485
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 487
    :cond_3
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 659
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 662
    :cond_0
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "access"    # I

    .line 114
    iget v0, p0, Lcom/sleepycat/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    .line 120
    :cond_0
    return-void

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 1
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 206
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visitTableSwitchInsn(IILcom/sleepycat/asm/Label;[Lcom/sleepycat/asm/Label;)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lcom/sleepycat/asm/Label;
    .param p4, "labels"    # [Lcom/sleepycat/asm/Label;

    .line 628
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/sleepycat/asm/Label;[Lcom/sleepycat/asm/Label;)V

    .line 631
    :cond_0
    return-void
.end method

.method public visitTryCatchAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lcom/sleepycat/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 757
    iget v0, p0, Lcom/sleepycat/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 760
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/asm/MethodVisitor;->visitTryCatchAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 763
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 758
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public visitTryCatchBlock(Lcom/sleepycat/asm/Label;Lcom/sleepycat/asm/Label;Lcom/sleepycat/asm/Label;Ljava/lang/String;)V
    .locals 1
    .param p1, "start"    # Lcom/sleepycat/asm/Label;
    .param p2, "end"    # Lcom/sleepycat/asm/Label;
    .param p3, "handler"    # Lcom/sleepycat/asm/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 729
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/asm/MethodVisitor;->visitTryCatchBlock(Lcom/sleepycat/asm/Label;Lcom/sleepycat/asm/Label;Lcom/sleepycat/asm/Label;Ljava/lang/String;)V

    .line 732
    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lcom/sleepycat/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 183
    iget v0, p0, Lcom/sleepycat/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 403
    :cond_0
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 382
    iget-object v0, p0, Lcom/sleepycat/asm/MethodVisitor;->mv:Lcom/sleepycat/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 385
    :cond_0
    return-void
.end method
