.class Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;
.super Lcom/sleepycat/persist/model/BytecodeEnhancer$AnnotationInfo;
.source "BytecodeEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/model/BytecodeEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrderInfo"
.end annotation


# instance fields
.field value:I


# direct methods
.method constructor <init>(Lcom/sleepycat/asm/AnnotationVisitor;)V
    .locals 0
    .param p1, "parent"    # Lcom/sleepycat/asm/AnnotationVisitor;

    .line 1717
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/model/BytecodeEnhancer$AnnotationInfo;-><init>(Lcom/sleepycat/asm/AnnotationVisitor;)V

    .line 1718
    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1722
    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1723
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;->value:I

    .line 1725
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;->parent:Lcom/sleepycat/asm/AnnotationVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1726
    return-void
.end method
