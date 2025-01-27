.class Lcom/sleepycat/je/dbi/CompressedOopsDetector;
.super Ljava/lang/Object;
.source "CompressedOopsDetector.java"


# static fields
.field private static final HOTSPOT_BEAN_CLASS:Ljava/lang/String; = "com.sun.management.HotSpotDiagnosticMXBean"

.field private static final HOTSPOT_BEAN_NAME:Ljava/lang/String; = "com.sun.management:type=HotSpotDiagnostic"

.field private static final IBM_VM_INFO_COMPRESSED_OOPS_SUBSTRING:Ljava/lang/String; = "Compressed References"

.field private static final VMOPTION_CLASS:Ljava/lang/String; = "com.sun.management.VMOption"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isEnabled()Ljava/lang/Boolean;
    .locals 5

    .line 49
    :try_start_0
    invoke-static {}, Lcom/sleepycat/je/dbi/CompressedOopsDetector;->isEnabledInternal()Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "java.vendor"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "vendor":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "IBM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    const-string v2, "java.vm.info"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "info":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 55
    const-string v3, "Compressed References"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 59
    .end local v2    # "info":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static isEnabledInternal()Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 67
    const-string v0, "com.sun.management.HotSpotDiagnosticMXBean"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "hotspotMBeanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v1

    .line 69
    const-string v2, "com.sun.management:type=HotSpotDiagnostic"

    invoke-static {v1, v2, v0}, Ljava/lang/management/ManagementFactory;->newPlatformMXBeanProxy(Ljavax/management/MBeanServerConnection;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 78
    .local v1, "hotspotMBean":Ljava/lang/Object;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 79
    const-string v4, "getVMOption"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 80
    .local v3, "getVMOption":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "UseCompressedOops"

    aput-object v4, v2, v5

    .line 81
    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 82
    .local v2, "vmOption":Ljava/lang/Object;
    const-string v4, "com.sun.management.VMOption"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 83
    .local v4, "vmOptionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v6, v5, [Ljava/lang/Class;

    const-string v7, "getValue"

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 84
    .local v6, "getValue":Ljava/lang/reflect/Method;
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 85
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 91
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sleepycat/je/dbi/CompressedOopsDetector;->isEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
