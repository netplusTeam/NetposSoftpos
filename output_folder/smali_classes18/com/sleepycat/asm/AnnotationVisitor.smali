.class public abstract Lcom/sleepycat/asm/AnnotationVisitor;
.super Ljava/lang/Object;
.source "AnnotationVisitor.java"


# instance fields
.field protected final api:I

.field protected av:Lcom/sleepycat/asm/AnnotationVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/asm/AnnotationVisitor;-><init>(ILcom/sleepycat/asm/AnnotationVisitor;)V

    .line 63
    return-void
.end method

.method public constructor <init>(ILcom/sleepycat/asm/AnnotationVisitor;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "av"    # Lcom/sleepycat/asm/AnnotationVisitor;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/high16 v0, 0x40000

    if-lt p1, v0, :cond_0

    const/high16 v0, 0x60000

    if-gt p1, v0, :cond_0

    .line 79
    iput p1, p0, Lcom/sleepycat/asm/AnnotationVisitor;->api:I

    .line 80
    iput-object p2, p0, Lcom/sleepycat/asm/AnnotationVisitor;->av:Lcom/sleepycat/asm/AnnotationVisitor;

    .line 81
    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationVisitor;->av:Lcom/sleepycat/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationVisitor;->av:Lcom/sleepycat/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationVisitor;->av:Lcom/sleepycat/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitEnd()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationVisitor;->av:Lcom/sleepycat/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/sleepycat/asm/AnnotationVisitor;->visitEnd()V

    .line 168
    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationVisitor;->av:Lcom/sleepycat/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method
