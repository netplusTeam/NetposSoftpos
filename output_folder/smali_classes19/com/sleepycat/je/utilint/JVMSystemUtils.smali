.class public Lcom/sleepycat/je/utilint/JVMSystemUtils;
.super Ljava/lang/Object;
.source "JVMSystemUtils.java"


# static fields
.field private static final MATCH_FILE_SEPARATOR:Ljava/lang/String;

.field public static final MIN_HEAP_MB:I

.field private static final ZING_ACCESS_ERROR:Ljava/lang/String; = "Could not access Zing management bean. Make sure -XX:+UseZingMXBeans was specified."

.field public static final ZING_JVM:Z

.field private static final ZING_MANAGEMENT_FACTORY_CLASS:Ljava/lang/String; = "com.azul.zing.management.ManagementFactory"

.field private static osBean:Ljava/lang/management/OperatingSystemMXBean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    const-string v0, "java.vendor"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "vendor":Ljava/lang/String;
    const-string v1, "java.vm.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "vmName":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 33
    const-string v3, "Azul Systems, Inc."

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Zing"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sput-boolean v3, Lcom/sleepycat/je/utilint/JVMSystemUtils;->ZING_JVM:Z

    .line 39
    .end local v0    # "vendor":Ljava/lang/String;
    .end local v1    # "vmName":Ljava/lang/String;
    if-eqz v3, :cond_1

    const/16 v2, 0x400

    :cond_1
    sput v2, Lcom/sleepycat/je/utilint/JVMSystemUtils;->MIN_HEAP_MB:I

    .line 49
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getOperatingSystemMXBean()Ljava/lang/management/OperatingSystemMXBean;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/utilint/JVMSystemUtils;->osBean:Ljava/lang/management/OperatingSystemMXBean;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/utilint/JVMSystemUtils;->MATCH_FILE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addZingJVMArgs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p0, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sleepycat/je/utilint/JVMSystemUtils;->insertZingJVMArgs(Ljava/util/List;I)V

    .line 155
    return-void
.end method

.method public static getRuntimeMaxMemory()J
    .locals 8

    .line 76
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mac OS X"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "jvmVersion":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1.4.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-wide v1, 0x7fffffffffffffffL

    return-wide v1

    .line 87
    .end local v0    # "jvmVersion":Ljava/lang/String;
    :cond_0
    sget-boolean v0, Lcom/sleepycat/je/utilint/JVMSystemUtils;->ZING_JVM:Z

    if-eqz v0, :cond_1

    .line 89
    :try_start_0
    const-string v0, "com.azul.zing.management.ManagementFactory"

    .line 90
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 92
    .local v0, "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getMemoryMXBean"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 93
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 95
    .local v1, "getBeanMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 96
    .local v3, "memoryBean":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 98
    .local v4, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getApplicationObjectHeapUsableMemory"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 101
    .local v5, "getMaxMemoryMethod":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v6

    .line 103
    .end local v0    # "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "getBeanMethod":Ljava/lang/reflect/Method;
    .end local v3    # "memoryBean":Ljava/lang/Object;
    .end local v4    # "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "getMaxMemoryMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not access Zing management bean. Make sure -XX:+UseZingMXBeans was specified."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSystemLoad()D
    .locals 2

    .line 64
    sget-object v0, Lcom/sleepycat/je/utilint/JVMSystemUtils;->osBean:Ljava/lang/management/OperatingSystemMXBean;

    invoke-interface {v0}, Ljava/lang/management/OperatingSystemMXBean;->getSystemLoadAverage()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getSystemZingMemorySize()J
    .locals 11

    .line 118
    :try_start_0
    sget-boolean v0, Lcom/sleepycat/je/utilint/JVMSystemUtils;->ZING_JVM:Z

    if-eqz v0, :cond_2

    .line 122
    const-string v0, "com.azul.zing.management.ManagementFactory"

    .line 123
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 125
    .local v0, "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getMemoryPoolMXBeans"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 126
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 128
    .local v1, "getPoolsMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    .line 129
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 131
    .local v3, "pools":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 132
    .local v4, "poolClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getName"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 133
    .local v5, "getNameMethod":Ljava/lang/reflect/Method;
    const-string v6, "getCurrentSize"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 135
    .local v6, "getSizeMethod":Ljava/lang/reflect/Method;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 136
    .local v8, "pool":Ljava/lang/Object;
    const-string v9, "System Zing Memory"

    new-array v10, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 137
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    return-wide v9

    .line 139
    .end local v8    # "pool":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 141
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v7, "System Zing Memory pool not found"

    invoke-direct {v2, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    .end local v0    # "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "getPoolsMethod":Ljava/lang/reflect/Method;
    .end local v3    # "pools":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "poolClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "getNameMethod":Ljava/lang/reflect/Method;
    .end local v6    # "getSizeMethod":Ljava/lang/reflect/Method;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only allowed under Zing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not access Zing management bean. Make sure -XX:+UseZingMXBeans was specified."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static insertZingJVMArgs(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p0, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/sleepycat/je/utilint/JVMSystemUtils;->ZING_JVM:Z

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/sleepycat/je/utilint/JVMSystemUtils;->MATCH_FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "prog":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v1, v0, v1

    const-string v3, "java"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    invoke-static {p0, v2}, Lcom/sleepycat/je/utilint/JVMSystemUtils;->insertZingJVMArgs(Ljava/util/List;I)V

    .line 169
    :cond_1
    return-void
.end method

.method private static insertZingJVMArgs(Ljava/util/List;I)V
    .locals 1
    .param p1, "insertAt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 175
    .local p0, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/sleepycat/je/utilint/JVMSystemUtils;->ZING_JVM:Z

    if-nez v0, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    const-string v0, "-XX:+UseZingMXBeans"

    invoke-interface {p0, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 179
    return-void
.end method
