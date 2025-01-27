.class public Ljavassist/util/HotSwapAgent;
.super Ljava/lang/Object;
.source "HotSwapAgent.java"


# static fields
.field private static instrumentation:Ljava/lang/instrument/Instrumentation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const/4 v0, 0x0

    sput-object v0, Ljavassist/util/HotSwapAgent;->instrumentation:Ljava/lang/instrument/Instrumentation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static agentmain(Ljava/lang/String;Ljava/lang/instrument/Instrumentation;)V
    .locals 2
    .param p0, "agentArgs"    # Ljava/lang/String;
    .param p1, "inst"    # Ljava/lang/instrument/Instrumentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 101
    invoke-interface {p1}, Ljava/lang/instrument/Instrumentation;->isRedefineClassesSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sput-object p1, Ljavassist/util/HotSwapAgent;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 105
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "this JVM does not support redefinition of classes"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createAgentJarFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljavassist/util/HotSwapAgent;->createJarFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static createJarFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 189
    const-string v0, "agent"

    const-string v1, ".jar"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 190
    .local v0, "jar":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 191
    invoke-static {v0}, Ljavassist/util/HotSwapAgent;->createJarFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static createJarFile(Ljava/io/File;)Ljava/io/File;
    .locals 8
    .param p0, "jar"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 197
    const-class v0, Ljavassist/util/HotSwapAgent;

    new-instance v1, Ljava/util/jar/Manifest;

    invoke-direct {v1}, Ljava/util/jar/Manifest;-><init>()V

    .line 198
    .local v1, "manifest":Ljava/util/jar/Manifest;
    invoke-virtual {v1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v2

    .line 199
    .local v2, "attrs":Ljava/util/jar/Attributes;
    sget-object v3, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    const-string v4, "1.0"

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v3, Ljava/util/jar/Attributes$Name;

    const-string v4, "Premain-Class"

    invoke-direct {v3, v4}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v3, Ljava/util/jar/Attributes$Name;

    const-string v4, "Agent-Class"

    invoke-direct {v3, v4}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v3, Ljava/util/jar/Attributes$Name;

    const-string v4, "Can-Retransform-Classes"

    invoke-direct {v3, v4}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v3, Ljava/util/jar/Attributes$Name;

    const-string v5, "Can-Redefine-Classes"

    invoke-direct {v3, v5}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const/4 v3, 0x0

    .line 207
    .local v3, "jos":Ljava/util/jar/JarOutputStream;
    :try_start_0
    new-instance v4, Ljava/util/jar/JarOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5, v1}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V

    move-object v3, v4

    .line 208
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "cname":Ljava/lang/String;
    new-instance v4, Ljava/util/jar/JarEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 210
    .local v4, "e":Ljava/util/jar/JarEntry;
    invoke-virtual {v3, v4}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 211
    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object v5

    .line 212
    .local v5, "pool":Ljavassist/ClassPool;
    invoke-virtual {v5, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v6

    .line 213
    .local v6, "clazz":Ljavassist/CtClass;
    invoke-virtual {v6}, Ljavassist/CtClass;->toBytecode()[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/jar/JarOutputStream;->write([B)V

    .line 214
    invoke-virtual {v3}, Ljava/util/jar/JarOutputStream;->closeEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .end local v0    # "cname":Ljava/lang/String;
    .end local v4    # "e":Ljava/util/jar/JarEntry;
    .end local v5    # "pool":Ljavassist/ClassPool;
    .end local v6    # "clazz":Ljavassist/CtClass;
    nop

    .line 218
    invoke-virtual {v3}, Ljava/util/jar/JarOutputStream;->close()V

    .line 221
    return-object p0

    .line 217
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_0

    .line 218
    invoke-virtual {v3}, Ljava/util/jar/JarOutputStream;->close()V

    .line 219
    :cond_0
    throw v0
.end method

.method public static premain(Ljava/lang/String;Ljava/lang/instrument/Instrumentation;)V
    .locals 0
    .param p0, "agentArgs"    # Ljava/lang/String;
    .param p1, "inst"    # Ljava/lang/instrument/Instrumentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 94
    invoke-static {p0, p1}, Ljavassist/util/HotSwapAgent;->agentmain(Ljava/lang/String;Ljava/lang/instrument/Instrumentation;)V

    .line 95
    return-void
.end method

.method public static redefine(Ljava/lang/Class;Ljavassist/CtClass;)V
    .locals 3
    .param p1, "newClass"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavassist/CtClass;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;,
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 113
    .local p0, "oldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 114
    .local v1, "old":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, v0, [Ljavassist/CtClass;

    aput-object p1, v0, v2

    .line 115
    .local v0, "newClasses":[Ljavassist/CtClass;
    invoke-static {v1, v0}, Ljavassist/util/HotSwapAgent;->redefine([Ljava/lang/Class;[Ljavassist/CtClass;)V

    .line 116
    return-void
.end method

.method public static redefine([Ljava/lang/Class;[Ljavassist/CtClass;)V
    .locals 5
    .param p1, "newClasses"    # [Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljavassist/CtClass;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;,
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 124
    .local p0, "oldClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {}, Ljavassist/util/HotSwapAgent;->startAgent()V

    .line 125
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/instrument/ClassDefinition;

    .line 126
    .local v0, "defs":[Ljava/lang/instrument/ClassDefinition;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 127
    new-instance v2, Ljava/lang/instrument/ClassDefinition;

    aget-object v3, p0, v1

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljavassist/CtClass;->toBytecode()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/instrument/ClassDefinition;-><init>(Ljava/lang/Class;[B)V

    aput-object v2, v0, v1

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    :cond_0
    :try_start_0
    sget-object v1, Ljavassist/util/HotSwapAgent;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-interface {v1, v0}, Ljava/lang/instrument/Instrumentation;->redefineClasses([Ljava/lang/instrument/ClassDefinition;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/instrument/UnmodifiableClassException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    nop

    .line 138
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/instrument/UnmodifiableClassException;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-virtual {v1}, Ljava/lang/instrument/UnmodifiableClassException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 132
    .end local v1    # "e":Ljava/lang/instrument/UnmodifiableClassException;
    :catch_1
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljavassist/NotFoundException;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private static startAgent()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 145
    sget-object v0, Ljavassist/util/HotSwapAgent;->instrumentation:Ljava/lang/instrument/Instrumentation;

    if-eqz v0, :cond_0

    .line 146
    return-void

    .line 149
    :cond_0
    :try_start_0
    invoke-static {}, Ljavassist/util/HotSwapAgent;->createJarFile()Ljava/io/File;

    move-result-object v0

    .line 151
    .local v0, "agentJar":Ljava/io/File;
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/management/RuntimeMXBean;->getName()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "nameOfRunningVM":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "pid":Ljava/lang/String;
    invoke-static {v2}, Lcom/sun/tools/attach/VirtualMachine;->attach(Ljava/lang/String;)Lcom/sun/tools/attach/VirtualMachine;

    move-result-object v3

    .line 154
    .local v3, "vm":Lcom/sun/tools/attach/VirtualMachine;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/tools/attach/VirtualMachine;->loadAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v3}, Lcom/sun/tools/attach/VirtualMachine;->detach()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    .end local v0    # "agentJar":Ljava/io/File;
    .end local v1    # "nameOfRunningVM":Ljava/lang/String;
    .end local v2    # "pid":Ljava/lang/String;
    .end local v3    # "vm":Lcom/sun/tools/attach/VirtualMachine;
    nop

    .line 161
    const/4 v0, 0x0

    .local v0, "sec":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 162
    sget-object v1, Ljavassist/util/HotSwapAgent;->instrumentation:Ljava/lang/instrument/Instrumentation;

    if-eqz v1, :cond_1

    .line 163
    return-void

    .line 166
    :cond_1
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    nop

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 174
    .end local v0    # "sec":I
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    new-instance v0, Ljavassist/NotFoundException;

    const-string v1, "hotswap agent (timeout)"

    invoke-direct {v0, v1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljavassist/NotFoundException;

    const-string v2, "hotswap agent"

    invoke-direct {v1, v2, v0}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public instrumentation()Ljava/lang/instrument/Instrumentation;
    .locals 1

    .line 88
    sget-object v0, Ljavassist/util/HotSwapAgent;->instrumentation:Ljava/lang/instrument/Instrumentation;

    return-object v0
.end method
