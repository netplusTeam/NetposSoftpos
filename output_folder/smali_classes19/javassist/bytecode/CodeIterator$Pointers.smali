.class Ljavassist/bytecode/CodeIterator$Pointers;
.super Ljava/lang/Object;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pointers"
.end annotation


# instance fields
.field cursor:I

.field etable:Ljavassist/bytecode/ExceptionTable;

.field line:Ljavassist/bytecode/LineNumberAttribute;

.field mark:I

.field mark0:I

.field mark2:I

.field stack:Ljavassist/bytecode/StackMapTable;

.field stack2:Ljavassist/bytecode/StackMap;

.field types:Ljavassist/bytecode/LocalVariableAttribute;

.field vars:Ljavassist/bytecode/LocalVariableAttribute;


# direct methods
.method constructor <init>(IIIILjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)V
    .locals 1
    .param p1, "cur"    # I
    .param p2, "m"    # I
    .param p3, "m2"    # I
    .param p4, "m0"    # I
    .param p5, "et"    # Ljavassist/bytecode/ExceptionTable;
    .param p6, "ca"    # Ljavassist/bytecode/CodeAttribute;

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iput p1, p0, Ljavassist/bytecode/CodeIterator$Pointers;->cursor:I

    .line 1051
    iput p2, p0, Ljavassist/bytecode/CodeIterator$Pointers;->mark:I

    .line 1052
    iput p3, p0, Ljavassist/bytecode/CodeIterator$Pointers;->mark2:I

    .line 1053
    iput p4, p0, Ljavassist/bytecode/CodeIterator$Pointers;->mark0:I

    .line 1054
    iput-object p5, p0, Ljavassist/bytecode/CodeIterator$Pointers;->etable:Ljavassist/bytecode/ExceptionTable;

    .line 1055
    const-string v0, "LineNumberTable"

    invoke-virtual {p6, v0}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/LineNumberAttribute;

    iput-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->line:Ljavassist/bytecode/LineNumberAttribute;

    .line 1056
    const-string v0, "LocalVariableTable"

    invoke-virtual {p6, v0}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/LocalVariableAttribute;

    iput-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->vars:Ljavassist/bytecode/LocalVariableAttribute;

    .line 1057
    const-string v0, "LocalVariableTypeTable"

    invoke-virtual {p6, v0}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/LocalVariableAttribute;

    iput-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->types:Ljavassist/bytecode/LocalVariableAttribute;

    .line 1058
    const-string v0, "StackMapTable"

    invoke-virtual {p6, v0}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/StackMapTable;

    iput-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->stack:Ljavassist/bytecode/StackMapTable;

    .line 1059
    const-string v0, "StackMap"

    invoke-virtual {p6, v0}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/StackMap;

    iput-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->stack2:Ljavassist/bytecode/StackMap;

    .line 1060
    return-void
.end method


# virtual methods
.method shiftForSwitch(II)V
    .locals 1
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1093
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->stack:Ljavassist/bytecode/StackMapTable;

    if-eqz v0, :cond_0

    .line 1094
    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/StackMapTable;->shiftForSwitch(II)V

    .line 1096
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->stack2:Ljavassist/bytecode/StackMap;

    if-eqz v0, :cond_1

    .line 1097
    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/StackMap;->shiftForSwitch(II)V

    .line 1098
    :cond_1
    return-void
.end method

.method shiftPc(IIZ)V
    .locals 1
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1063
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->cursor:I

    if-lt p1, v0, :cond_0

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_1

    .line 1064
    :cond_0
    add-int/2addr v0, p2

    iput v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->cursor:I

    .line 1066
    :cond_1
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->mark:I

    if-lt p1, v0, :cond_2

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_3

    .line 1067
    :cond_2
    add-int/2addr v0, p2

    iput v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->mark:I

    .line 1069
    :cond_3
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->mark2:I

    if-lt p1, v0, :cond_4

    if-ne p1, v0, :cond_5

    if-eqz p3, :cond_5

    .line 1070
    :cond_4
    add-int/2addr v0, p2

    iput v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->mark2:I

    .line 1072
    :cond_5
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->mark0:I

    if-lt p1, v0, :cond_6

    if-ne p1, v0, :cond_7

    if-eqz p3, :cond_7

    .line 1073
    :cond_6
    add-int/2addr v0, p2

    iput v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->mark0:I

    .line 1075
    :cond_7
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->etable:Ljavassist/bytecode/ExceptionTable;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/ExceptionTable;->shiftPc(IIZ)V

    .line 1076
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->line:Ljavassist/bytecode/LineNumberAttribute;

    if-eqz v0, :cond_8

    .line 1077
    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/LineNumberAttribute;->shiftPc(IIZ)V

    .line 1079
    :cond_8
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->vars:Ljavassist/bytecode/LocalVariableAttribute;

    if-eqz v0, :cond_9

    .line 1080
    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/LocalVariableAttribute;->shiftPc(IIZ)V

    .line 1082
    :cond_9
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->types:Ljavassist/bytecode/LocalVariableAttribute;

    if-eqz v0, :cond_a

    .line 1083
    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/LocalVariableAttribute;->shiftPc(IIZ)V

    .line 1085
    :cond_a
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->stack:Ljavassist/bytecode/StackMapTable;

    if-eqz v0, :cond_b

    .line 1086
    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/StackMapTable;->shiftPc(IIZ)V

    .line 1088
    :cond_b
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->stack2:Ljavassist/bytecode/StackMap;

    if-eqz v0, :cond_c

    .line 1089
    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/StackMap;->shiftPc(IIZ)V

    .line 1090
    :cond_c
    return-void
.end method
