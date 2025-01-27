.class public abstract Lcom/sleepycat/asm/ClassVisitor;
.super Ljava/lang/Object;
.source "ClassVisitor.java"


# instance fields
.field protected final api:I

.field protected cv:Lcom/sleepycat/asm/ClassVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/asm/ClassVisitor;-><init>(ILcom/sleepycat/asm/ClassVisitor;)V

    .line 65
    return-void
.end method

.method public constructor <init>(ILcom/sleepycat/asm/ClassVisitor;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "cv"    # Lcom/sleepycat/asm/ClassVisitor;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/high16 v0, 0x40000

    if-lt p1, v0, :cond_0

    const/high16 v0, 0x60000

    if-gt p1, v0, :cond_0

    .line 81
    iput p1, p0, Lcom/sleepycat/asm/ClassVisitor;->api:I

    .line 82
    iput-object p2, p0, Lcom/sleepycat/asm/ClassVisitor;->cv:Lcom/sleepycat/asm/ClassVisitor;

    .line 83
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/sleepycat/asm/ClassVisitor;->cv:Lcom/sleepycat/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 113
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 188
    iget-object v0, p0, Lcom/sleepycat/asm/ClassVisitor;->cv:Lcom/sleepycat/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitAttribute(Lcom/sleepycat/asm/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lcom/sleepycat/asm/Attribute;

    .line 234
    iget-object v0, p0, Lcom/sleepycat/asm/ClassVisitor;->cv:Lcom/sleepycat/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/ClassVisitor;->visitAttribute(Lcom/sleepycat/asm/Attribute;)V

    .line 237
    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/sleepycat/asm/ClassVisitor;->cv:Lcom/sleepycat/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/sleepycat/asm/ClassVisitor;->visitEnd()V

    .line 341
    :cond_0
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/sleepycat/asm/FieldVisitor;
    .locals 6
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/sleepycat/asm/ClassVisitor;->cv:Lcom/sleepycat/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 294
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/sleepycat/asm/FieldVisitor;

    move-result-object v0

    return-object v0

    .line 296
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 259
    iget-object v0, p0, Lcom/sleepycat/asm/ClassVisitor;->cv:Lcom/sleepycat/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 262
    :cond_0
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;
    .locals 6
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/sleepycat/asm/ClassVisitor;->cv:Lcom/sleepycat/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 327
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    return-object v0

    .line 329
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitModule(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/asm/ModuleVisitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "version"    # Ljava/lang/String;

    .line 147
    iget v0, p0, Lcom/sleepycat/asm/ClassVisitor;->api:I

    const/high16 v1, 0x60000

    if-lt v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/sleepycat/asm/ClassVisitor;->cv:Lcom/sleepycat/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/asm/ClassVisitor;->visitModule(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/asm/ModuleVisitor;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/sleepycat/asm/ClassVisitor;->cv:Lcom/sleepycat/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/sleepycat/asm/ClassVisitor;->cv:Lcom/sleepycat/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lcom/sleepycat/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 218
    iget v0, p0, Lcom/sleepycat/asm/ClassVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/sleepycat/asm/ClassVisitor;->cv:Lcom/sleepycat/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/asm/ClassVisitor;->visitTypeAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 219
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
