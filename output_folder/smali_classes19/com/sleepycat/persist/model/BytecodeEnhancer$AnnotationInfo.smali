.class abstract Lcom/sleepycat/persist/model/BytecodeEnhancer$AnnotationInfo;
.super Lcom/sleepycat/asm/AnnotationVisitor;
.source "BytecodeEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/model/BytecodeEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AnnotationInfo"
.end annotation


# instance fields
.field parent:Lcom/sleepycat/asm/AnnotationVisitor;


# direct methods
.method constructor <init>(Lcom/sleepycat/asm/AnnotationVisitor;)V
    .locals 1
    .param p1, "parent"    # Lcom/sleepycat/asm/AnnotationVisitor;

    .line 1734
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/AnnotationVisitor;-><init>(I)V

    .line 1735
    iput-object p1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$AnnotationInfo;->parent:Lcom/sleepycat/asm/AnnotationVisitor;

    .line 1736
    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1739
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$AnnotationInfo;->parent:Lcom/sleepycat/asm/AnnotationVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1740
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 1743
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$AnnotationInfo;->parent:Lcom/sleepycat/asm/AnnotationVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1747
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$AnnotationInfo;->parent:Lcom/sleepycat/asm/AnnotationVisitor;

    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitEnd()V
    .locals 1

    .line 1755
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$AnnotationInfo;->parent:Lcom/sleepycat/asm/AnnotationVisitor;

    invoke-virtual {v0}, Lcom/sleepycat/asm/AnnotationVisitor;->visitEnd()V

    .line 1756
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 1751
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$AnnotationInfo;->parent:Lcom/sleepycat/asm/AnnotationVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    return-void
.end method
