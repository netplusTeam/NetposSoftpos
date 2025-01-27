.class public Ljavassist/tools/reflect/Compiler;
.super Ljava/lang/Object;
.source "Compiler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static help(Ljava/io/PrintStream;)V
    .locals 1
    .param p0, "out"    # Ljava/io/PrintStream;

    .line 161
    const-string v0, "Usage: java javassist.tools.reflect.Compiler"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    const-string v0, "            (<class> [-m <metaobject>] [-c <class metaobject>])+"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    array-length v0, p0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Ljavassist/tools/reflect/Compiler;->help(Ljava/io/PrintStream;)V

    .line 77
    return-void

    .line 80
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljavassist/tools/reflect/CompiledClass;

    .line 81
    .local v0, "entries":[Ljavassist/tools/reflect/CompiledClass;
    invoke-static {p0, v0}, Ljavassist/tools/reflect/Compiler;->parse([Ljava/lang/String;[Ljavassist/tools/reflect/CompiledClass;)I

    move-result v1

    .line 83
    .local v1, "n":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 84
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "bad parameter."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    return-void

    .line 88
    :cond_1
    invoke-static {v0, v1}, Ljavassist/tools/reflect/Compiler;->processClasses([Ljavassist/tools/reflect/CompiledClass;I)V

    .line 89
    return-void
.end method

.method private static parse([Ljava/lang/String;[Ljavassist/tools/reflect/CompiledClass;)I
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "result"    # [Ljavassist/tools/reflect/CompiledClass;

    .line 133
    const/4 v0, -0x1

    .line 134
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_7

    .line 135
    aget-object v2, p0, v1

    .line 136
    .local v2, "a":Ljava/lang/String;
    const-string v3, "-m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    .line 137
    if-ltz v0, :cond_1

    add-int/lit8 v3, v1, 0x1

    array-length v5, p0

    if-le v3, v5, :cond_0

    goto :goto_1

    .line 140
    :cond_0
    aget-object v3, p1, v0

    add-int/lit8 v1, v1, 0x1

    aget-object v4, p0, v1

    iput-object v4, v3, Ljavassist/tools/reflect/CompiledClass;->metaobject:Ljava/lang/String;

    goto :goto_3

    .line 138
    :cond_1
    :goto_1
    return v4

    .line 141
    :cond_2
    const-string v3, "-c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 142
    if-ltz v0, :cond_4

    add-int/lit8 v3, v1, 0x1

    array-length v5, p0

    if-le v3, v5, :cond_3

    goto :goto_2

    .line 145
    :cond_3
    aget-object v3, p1, v0

    add-int/lit8 v1, v1, 0x1

    aget-object v4, p0, v1

    iput-object v4, v3, Ljavassist/tools/reflect/CompiledClass;->classobject:Ljava/lang/String;

    goto :goto_3

    .line 143
    :cond_4
    :goto_2
    return v4

    .line 146
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_6

    .line 147
    return v4

    .line 149
    :cond_6
    new-instance v3, Ljavassist/tools/reflect/CompiledClass;

    invoke-direct {v3}, Ljavassist/tools/reflect/CompiledClass;-><init>()V

    .line 150
    .local v3, "cc":Ljavassist/tools/reflect/CompiledClass;
    iput-object v2, v3, Ljavassist/tools/reflect/CompiledClass;->classname:Ljava/lang/String;

    .line 151
    const/4 v4, 0x0

    iput-object v4, v3, Ljavassist/tools/reflect/CompiledClass;->metaobject:Ljava/lang/String;

    .line 152
    iput-object v4, v3, Ljavassist/tools/reflect/CompiledClass;->classobject:Ljava/lang/String;

    .line 153
    add-int/lit8 v0, v0, 0x1

    aput-object v3, p1, v0

    .line 134
    .end local v2    # "a":Ljava/lang/String;
    .end local v3    # "cc":Ljavassist/tools/reflect/CompiledClass;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "i":I
    :cond_7
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private static processClasses([Ljavassist/tools/reflect/CompiledClass;I)V
    .locals 9
    .param p0, "entries"    # [Ljavassist/tools/reflect/CompiledClass;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    new-instance v0, Ljavassist/tools/reflect/Reflection;

    invoke-direct {v0}, Ljavassist/tools/reflect/Reflection;-><init>()V

    .line 95
    .local v0, "implementor":Ljavassist/tools/reflect/Reflection;
    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object v1

    .line 96
    .local v1, "pool":Ljavassist/ClassPool;
    invoke-virtual {v0, v1}, Ljavassist/tools/reflect/Reflection;->start(Ljavassist/ClassPool;)V

    .line 98
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_5

    .line 99
    aget-object v3, p0, v2

    iget-object v3, v3, Ljavassist/tools/reflect/CompiledClass;->classname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3

    .line 100
    .local v3, "c":Ljavassist/CtClass;
    aget-object v4, p0, v2

    iget-object v4, v4, Ljavassist/tools/reflect/CompiledClass;->metaobject:Ljava/lang/String;

    if-nez v4, :cond_1

    aget-object v4, p0, v2

    iget-object v4, v4, Ljavassist/tools/reflect/CompiledClass;->classobject:Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_1

    .line 123
    :cond_0
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": not reflective"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 104
    :cond_1
    :goto_1
    aget-object v4, p0, v2

    iget-object v4, v4, Ljavassist/tools/reflect/CompiledClass;->metaobject:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 105
    const-string v4, "javassist.tools.reflect.Metaobject"

    .local v4, "metaobj":Ljava/lang/String;
    goto :goto_2

    .line 107
    .end local v4    # "metaobj":Ljava/lang/String;
    :cond_2
    aget-object v4, p0, v2

    iget-object v4, v4, Ljavassist/tools/reflect/CompiledClass;->metaobject:Ljava/lang/String;

    .line 109
    .restart local v4    # "metaobj":Ljava/lang/String;
    :goto_2
    aget-object v5, p0, v2

    iget-object v5, v5, Ljavassist/tools/reflect/CompiledClass;->classobject:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 110
    const-string v5, "javassist.tools.reflect.ClassMetaobject"

    .local v5, "classobj":Ljava/lang/String;
    goto :goto_3

    .line 112
    .end local v5    # "classobj":Ljava/lang/String;
    :cond_3
    aget-object v5, p0, v2

    iget-object v5, v5, Ljavassist/tools/reflect/CompiledClass;->classobject:Ljava/lang/String;

    .line 114
    .restart local v5    # "classobj":Ljava/lang/String;
    :goto_3
    invoke-virtual {v1, v4}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v6

    .line 115
    invoke-virtual {v1, v5}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v7

    .line 114
    invoke-virtual {v0, v3, v6, v7}, Ljavassist/tools/reflect/Reflection;->makeReflective(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 116
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warning: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is reflective.  It was not changed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    :cond_4
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    .end local v4    # "metaobj":Ljava/lang/String;
    .end local v5    # "classobj":Ljava/lang/String;
    nop

    .line 98
    .end local v3    # "c":Ljavassist/CtClass;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 126
    .end local v2    # "i":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    if-ge v2, p1, :cond_6

    .line 127
    aget-object v3, p0, v2

    iget-object v3, v3, Ljavassist/tools/reflect/CompiledClass;->classname:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljavassist/tools/reflect/Reflection;->onLoad(Ljavassist/ClassPool;Ljava/lang/String;)V

    .line 128
    aget-object v3, p0, v2

    iget-object v3, v3, Ljavassist/tools/reflect/CompiledClass;->classname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->writeFile()V

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 130
    .end local v2    # "i":I
    :cond_6
    return-void
.end method
