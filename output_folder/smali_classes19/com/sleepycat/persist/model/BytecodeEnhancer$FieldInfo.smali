.class Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
.super Lcom/sleepycat/asm/FieldVisitor;
.source "BytecodeEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/model/BytecodeEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldInfo"
.end annotation


# instance fields
.field isPriKey:Z

.field isSecKey:Z

.field isString:Z

.field isTransient:Z

.field name:Ljava/lang/String;

.field order:Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;

.field parent:Lcom/sleepycat/asm/FieldVisitor;

.field type:Lcom/sleepycat/asm/Type;


# direct methods
.method constructor <init>(Lcom/sleepycat/asm/FieldVisitor;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "parent"    # Lcom/sleepycat/asm/FieldVisitor;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "isTransient"    # Z

    .line 1655
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/FieldVisitor;-><init>(I)V

    .line 1649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isString:Z

    .line 1656
    iput-object p1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->parent:Lcom/sleepycat/asm/FieldVisitor;

    .line 1657
    iput-object p2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    .line 1658
    iput-boolean p4, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isTransient:Z

    .line 1659
    invoke-static {p3}, Lcom/sleepycat/asm/Type;->getType(Ljava/lang/String;)Lcom/sleepycat/asm/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 1660
    invoke-virtual {v0}, Lcom/sleepycat/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isString:Z

    .line 1663
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1699
    iget-boolean v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isPriKey:Z

    if-eqz v0, :cond_0

    .line 1700
    const-string v0, "PrimaryKey"

    .local v0, "label":Ljava/lang/String;
    goto :goto_0

    .line 1701
    .end local v0    # "label":Ljava/lang/String;
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isSecKey:Z

    if-eqz v0, :cond_1

    .line 1702
    const-string v0, "SecondaryKey"

    .restart local v0    # "label":Ljava/lang/String;
    goto :goto_0

    .line 1703
    .end local v0    # "label":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->order:Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;

    if-eqz v0, :cond_2

    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompositeKeyField "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->order:Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;

    iget v1, v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "label":Ljava/lang/String;
    goto :goto_0

    .line 1706
    .end local v0    # "label":Ljava/lang/String;
    :cond_2
    const-string v0, "NonKeyField"

    .line 1708
    .restart local v0    # "label":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 1667
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->parent:Lcom/sleepycat/asm/FieldVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    .line 1668
    .local v0, "ret":Lcom/sleepycat/asm/AnnotationVisitor;
    nop

    .line 1669
    const-string v1, "Lcom/sleepycat/persist/model/KeyField;"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1670
    new-instance v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;

    invoke-direct {v1, v0}, Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;-><init>(Lcom/sleepycat/asm/AnnotationVisitor;)V

    iput-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->order:Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;

    .line 1671
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->order:Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;

    goto :goto_0

    .line 1672
    :cond_0
    nop

    .line 1673
    const-string v1, "Lcom/sleepycat/persist/model/PrimaryKey;"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1674
    iput-boolean v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isPriKey:Z

    goto :goto_0

    .line 1675
    :cond_1
    nop

    .line 1676
    const-string v1, "Lcom/sleepycat/persist/model/SecondaryKey;"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1677
    iput-boolean v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isSecKey:Z

    goto :goto_0

    .line 1678
    :cond_2
    nop

    .line 1679
    const-string v1, "Lcom/sleepycat/persist/model/NotPersistent;"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1680
    iput-boolean v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isTransient:Z

    goto :goto_0

    .line 1681
    :cond_3
    nop

    .line 1682
    const-string v1, "Lcom/sleepycat/persist/model/NotTransient;"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1683
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isTransient:Z

    .line 1685
    :cond_4
    :goto_0
    return-object v0
.end method

.method public visitAttribute(Lcom/sleepycat/asm/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lcom/sleepycat/asm/Attribute;

    .line 1689
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->parent:Lcom/sleepycat/asm/FieldVisitor;

    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/FieldVisitor;->visitAttribute(Lcom/sleepycat/asm/Attribute;)V

    .line 1690
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 1693
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->parent:Lcom/sleepycat/asm/FieldVisitor;

    invoke-virtual {v0}, Lcom/sleepycat/asm/FieldVisitor;->visitEnd()V

    .line 1694
    return-void
.end method
