.class public Ljavassist/bytecode/ClassFilePrinter;
.super Ljava/lang/Object;
.source "ClassFilePrinter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static print(Ljavassist/bytecode/ClassFile;)V
    .locals 3
    .param p0, "cf"    # Ljavassist/bytecode/ClassFile;

    .line 34
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-static {p0, v0}, Ljavassist/bytecode/ClassFilePrinter;->print(Ljavassist/bytecode/ClassFile;Ljava/io/PrintWriter;)V

    .line 35
    return-void
.end method

.method public static print(Ljavassist/bytecode/ClassFile;Ljava/io/PrintWriter;)V
    .locals 11
    .param p0, "cf"    # Ljavassist/bytecode/ClassFile;
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 44
    nop

    .line 45
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getAccessFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x21

    invoke-static {v0}, Ljavassist/bytecode/AccessFlag;->toModifier(I)I

    move-result v0

    .line 47
    .local v0, "mod":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "major: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljavassist/bytecode/ClassFile;->major:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", minor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljavassist/bytecode/ClassFile;->minor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " modifiers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getAccessFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljavassist/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extends "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getInterfaces()[Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "infs":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 54
    const-string v2, "    implements "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 62
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 63
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getFields()Ljava/util/List;

    move-result-object v2

    .line 64
    .local v2, "fields":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/FieldInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "\t"

    const-string v6, " "

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/FieldInfo;

    .line 65
    .local v4, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v4}, Ljavassist/bytecode/FieldInfo;->getAccessFlags()I

    move-result v7

    .line 66
    .local v7, "acc":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljavassist/bytecode/AccessFlag;->toModifier(I)I

    move-result v9

    invoke-static {v9}, Ljavassist/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 67
    invoke-virtual {v4}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 68
    invoke-virtual {v4}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v4}, Ljavassist/bytecode/FieldInfo;->getAttributes()Ljava/util/List;

    move-result-object v5

    const/16 v6, 0x66

    invoke-static {v5, p1, v6}, Ljavassist/bytecode/ClassFilePrinter;->printAttributes(Ljava/util/List;Ljava/io/PrintWriter;C)V

    .line 70
    .end local v4    # "finfo":Ljavassist/bytecode/FieldInfo;
    .end local v7    # "acc":I
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 73
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v3

    .line 74
    .local v3, "methods":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/MethodInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavassist/bytecode/MethodInfo;

    .line 75
    .local v7, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v7}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v8

    .line 76
    .local v8, "acc":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljavassist/bytecode/AccessFlag;->toModifier(I)I

    move-result v10

    invoke-static {v10}, Ljavassist/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 77
    invoke-virtual {v7}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 78
    invoke-virtual {v7}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 76
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v7}, Ljavassist/bytecode/MethodInfo;->getAttributes()Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x6d

    invoke-static {v9, p1, v10}, Ljavassist/bytecode/ClassFilePrinter;->printAttributes(Ljava/util/List;Ljava/io/PrintWriter;C)V

    .line 80
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 81
    .end local v7    # "minfo":Ljavassist/bytecode/MethodInfo;
    .end local v8    # "acc":I
    goto :goto_2

    .line 83
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 84
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getAttributes()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x63

    invoke-static {v4, p1, v5}, Ljavassist/bytecode/ClassFilePrinter;->printAttributes(Ljava/util/List;Ljava/io/PrintWriter;C)V

    .line 85
    return-void
.end method

.method static printAttributes(Ljava/util/List;Ljava/io/PrintWriter;C)V
    .locals 7
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "kind"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;",
            "Ljava/io/PrintWriter;",
            "C)V"
        }
    .end annotation

    .line 88
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/AttributeInfo;>;"
    if-nez p0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AttributeInfo;

    .line 92
    .local v1, "ai":Ljavassist/bytecode/AttributeInfo;
    instance-of v2, v1, Ljavassist/bytecode/CodeAttribute;

    const-string v3, "attribute: "

    if-eqz v2, :cond_1

    .line 93
    move-object v2, v1

    check-cast v2, Ljavassist/bytecode/CodeAttribute;

    .line 94
    .local v2, "ca":Ljavassist/bytecode/CodeAttribute;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "max stack "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", max locals "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 97
    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 98
    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " catch blocks"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v3, "<code attribute begin>"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p1, p2}, Ljavassist/bytecode/ClassFilePrinter;->printAttributes(Ljava/util/List;Ljava/io/PrintWriter;C)V

    .line 102
    const-string v3, "<code attribute end>"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    .end local v2    # "ca":Ljavassist/bytecode/CodeAttribute;
    goto/16 :goto_4

    .line 104
    :cond_1
    instance-of v2, v1, Ljavassist/bytecode/AnnotationsAttribute;

    if-eqz v2, :cond_2

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "annnotation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 107
    :cond_2
    instance-of v2, v1, Ljavassist/bytecode/ParameterAnnotationsAttribute;

    if-eqz v2, :cond_3

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parameter annnotations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 110
    :cond_3
    instance-of v2, v1, Ljavassist/bytecode/StackMapTable;

    if-eqz v2, :cond_4

    .line 111
    const-string v2, "<stack map table begin>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    move-object v2, v1

    check-cast v2, Ljavassist/bytecode/StackMapTable;

    invoke-static {v2, p1}, Ljavassist/bytecode/StackMapTable$Printer;->print(Ljavassist/bytecode/StackMapTable;Ljava/io/PrintWriter;)V

    .line 113
    const-string v2, "<stack map table end>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 115
    :cond_4
    instance-of v2, v1, Ljavassist/bytecode/StackMap;

    if-eqz v2, :cond_5

    .line 116
    const-string v2, "<stack map begin>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    move-object v2, v1

    check-cast v2, Ljavassist/bytecode/StackMap;

    invoke-virtual {v2, p1}, Ljavassist/bytecode/StackMap;->print(Ljava/io/PrintWriter;)V

    .line 118
    const-string v2, "<stack map end>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 120
    :cond_5
    instance-of v2, v1, Ljavassist/bytecode/SignatureAttribute;

    if-eqz v2, :cond_8

    .line 121
    move-object v2, v1

    check-cast v2, Ljavassist/bytecode/SignatureAttribute;

    .line 122
    .local v2, "sa":Ljavassist/bytecode/SignatureAttribute;
    invoke-virtual {v2}, Ljavassist/bytecode/SignatureAttribute;->getSignature()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "sig":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "signature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    const/16 v4, 0x63

    if-ne p2, v4, :cond_6

    .line 127
    :try_start_0
    invoke-static {v3}, Ljavassist/bytecode/SignatureAttribute;->toClassSignature(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$ClassSignature;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "s":Ljava/lang/String;
    goto :goto_1

    .line 135
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_2

    .line 128
    :cond_6
    const/16 v4, 0x6d

    if-ne p2, v4, :cond_7

    .line 129
    invoke-static {v3}, Ljavassist/bytecode/SignatureAttribute;->toMethodSignature(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$MethodSignature;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_1

    .line 131
    .end local v4    # "s":Ljava/lang/String;
    :cond_7
    invoke-static {v3}, Ljavassist/bytecode/SignatureAttribute;->toFieldSignature(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    .restart local v4    # "s":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "           "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_3

    .line 136
    .local v4, "e":Ljavassist/bytecode/BadBytecode;
    :goto_2
    const-string v5, "           syntax error"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    .end local v2    # "sa":Ljavassist/bytecode/SignatureAttribute;
    .end local v3    # "sig":Ljava/lang/String;
    .end local v4    # "e":Ljavassist/bytecode/BadBytecode;
    :goto_3
    goto :goto_4

    .line 140
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 141
    invoke-virtual {v1}, Ljavassist/bytecode/AttributeInfo;->get()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " byte): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 142
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    .end local v1    # "ai":Ljavassist/bytecode/AttributeInfo;
    :goto_4
    goto/16 :goto_0

    .line 144
    :cond_9
    return-void
.end method
