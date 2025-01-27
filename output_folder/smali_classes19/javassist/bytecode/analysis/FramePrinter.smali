.class public final Ljavassist/bytecode/analysis/FramePrinter;
.super Ljava/lang/Object;
.source "FramePrinter.java"


# instance fields
.field private final stream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/PrintStream;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    .line 46
    return-void
.end method

.method private addSpacing(I)V
    .locals 2
    .param p1, "count"    # I

    .line 145
    :goto_0
    add-int/lit8 v0, p1, -0x1

    .end local p1    # "count":I
    .local v0, "count":I
    if-lez p1, :cond_0

    .line 146
    iget-object p1, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(C)V

    move p1, v0

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method private getMethodString(Ljavassist/CtMethod;)Ljava/lang/String;
    .locals 3
    .param p1, "method"    # Ljavassist/CtMethod;

    .line 67
    const-string v0, " "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljavassist/CtMethod;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljavassist/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 68
    invoke-virtual {p1}, Ljavassist/CtMethod;->getReturnType()Ljavassist/CtClass;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Ljavassist/CtMethod;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static print(Ljavassist/CtClass;Ljava/io/PrintStream;)V
    .locals 1
    .param p0, "clazz"    # Ljavassist/CtClass;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .line 52
    new-instance v0, Ljavassist/bytecode/analysis/FramePrinter;

    invoke-direct {v0, p1}, Ljavassist/bytecode/analysis/FramePrinter;-><init>(Ljava/io/PrintStream;)V

    invoke-virtual {v0, p0}, Ljavassist/bytecode/analysis/FramePrinter;->print(Ljavassist/CtClass;)V

    .line 53
    return-void
.end method

.method private printLocals(Ljavassist/bytecode/analysis/Frame;)V
    .locals 5
    .param p1, "frame"    # Ljavassist/bytecode/analysis/Frame;

    .line 133
    iget-object v0, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    const-string v1, "locals ["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Frame;->localsLength()I

    move-result v0

    .line 135
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 136
    if-lez v1, :cond_0

    .line 137
    iget-object v2, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 138
    :cond_0
    invoke-virtual {p1, v1}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    .line 139
    .local v2, "type":Ljavassist/bytecode/analysis/Type;
    iget-object v3, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    if-nez v2, :cond_1

    const-string v4, "empty"

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljavassist/bytecode/analysis/Type;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 135
    .end local v2    # "type":Ljavassist/bytecode/analysis/Type;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private printStack(Ljavassist/bytecode/analysis/Frame;)V
    .locals 4
    .param p1, "frame"    # Ljavassist/bytecode/analysis/Frame;

    .line 121
    iget-object v0, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    const-string v1, "stack ["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Frame;->getTopIndex()I

    move-result v0

    .line 123
    .local v0, "top":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 124
    if-lez v1, :cond_0

    .line 125
    iget-object v2, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-virtual {p1, v1}, Ljavassist/bytecode/analysis/Frame;->getStack(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    .line 127
    .local v2, "type":Ljavassist/bytecode/analysis/Type;
    iget-object v3, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 123
    .end local v2    # "type":Ljavassist/bytecode/analysis/Type;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    return-void
.end method


# virtual methods
.method public print(Ljavassist/CtClass;)V
    .locals 3
    .param p1, "clazz"    # Ljavassist/CtClass;

    .line 59
    invoke-virtual {p1}, Ljavassist/CtClass;->getDeclaredMethods()[Ljavassist/CtMethod;

    move-result-object v0

    .line 60
    .local v0, "methods":[Ljavassist/CtMethod;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 61
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljavassist/bytecode/analysis/FramePrinter;->print(Ljavassist/CtMethod;)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public print(Ljavassist/CtMethod;)V
    .locals 10
    .param p1, "method"    # Ljavassist/CtMethod;

    .line 79
    iget-object v0, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/FramePrinter;->getMethodString(Ljavassist/CtMethod;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    .line 81
    .local v0, "info":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 82
    .local v1, "pool":Ljavassist/bytecode/ConstPool;
    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v2

    .line 83
    .local v2, "code":Ljavassist/bytecode/CodeAttribute;
    if-nez v2, :cond_0

    .line 84
    return-void

    .line 88
    :cond_0
    :try_start_0
    new-instance v3, Ljavassist/bytecode/analysis/Analyzer;

    invoke-direct {v3}, Ljavassist/bytecode/analysis/Analyzer;-><init>()V

    invoke-virtual {p1}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljavassist/bytecode/analysis/Analyzer;->analyze(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Frame;

    move-result-object v3
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .local v3, "frames":[Ljavassist/bytecode/analysis/Frame;
    nop

    .line 93
    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->getCodeLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 95
    .local v4, "spacing":I
    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v5

    .line 96
    .local v5, "iterator":Ljavassist/bytecode/CodeIterator;
    :goto_0
    invoke-virtual {v5}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 99
    :try_start_1
    invoke-virtual {v5}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v6
    :try_end_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    .local v6, "pos":I
    nop

    .line 104
    iget-object v7, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5, v6, v1}, Ljavassist/bytecode/InstructionPrinter;->instructionString(Ljavassist/bytecode/CodeIterator;ILjavassist/bytecode/ConstPool;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    add-int/lit8 v7, v4, 0x3

    invoke-direct {p0, v7}, Ljavassist/bytecode/analysis/FramePrinter;->addSpacing(I)V

    .line 107
    aget-object v7, v3, v6

    .line 108
    .local v7, "frame":Ljavassist/bytecode/analysis/Frame;
    if-nez v7, :cond_1

    .line 109
    iget-object v8, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    const-string v9, "--DEAD CODE--"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    goto :goto_0

    .line 112
    :cond_1
    invoke-direct {p0, v7}, Ljavassist/bytecode/analysis/FramePrinter;->printStack(Ljavassist/bytecode/analysis/Frame;)V

    .line 114
    add-int/lit8 v8, v4, 0x3

    invoke-direct {p0, v8}, Ljavassist/bytecode/analysis/FramePrinter;->addSpacing(I)V

    .line 115
    invoke-direct {p0, v7}, Ljavassist/bytecode/analysis/FramePrinter;->printLocals(Ljavassist/bytecode/analysis/Frame;)V

    .line 116
    .end local v6    # "pos":I
    .end local v7    # "frame":Ljavassist/bytecode/analysis/Frame;
    goto :goto_0

    .line 100
    :catch_0
    move-exception v6

    .line 101
    .local v6, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 118
    .end local v6    # "e":Ljavassist/bytecode/BadBytecode;
    :cond_2
    return-void

    .line 89
    .end local v3    # "frames":[Ljavassist/bytecode/analysis/Frame;
    .end local v4    # "spacing":I
    .end local v5    # "iterator":Ljavassist/bytecode/CodeIterator;
    :catch_1
    move-exception v3

    .line 90
    .local v3, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
