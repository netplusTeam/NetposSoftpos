.class public Lch/qos/logback/classic/spi/PackagingDataCalculator;
.super Ljava/lang/Object;
.source "PackagingDataCalculator.java"


# static fields
.field private static GET_CALLER_CLASS_METHOD_AVAILABLE:Z

.field static final STEP_ARRAY_TEMPLATE:[Lch/qos/logback/classic/spi/StackTraceElementProxy;


# instance fields
.field cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lch/qos/logback/classic/spi/ClassPackagingData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    const/4 v0, 0x0

    new-array v1, v0, [Lch/qos/logback/classic/spi/StackTraceElementProxy;

    sput-object v1, Lch/qos/logback/classic/spi/PackagingDataCalculator;->STEP_ARRAY_TEMPLATE:[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    .line 35
    sput-boolean v0, Lch/qos/logback/classic/spi/PackagingDataCalculator;->GET_CALLER_CLASS_METHOD_AVAILABLE:Z

    .line 45
    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lsun/reflect/Reflection;->getCallerClass(I)Ljava/lang/Class;

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lch/qos/logback/classic/spi/PackagingDataCalculator;->GET_CALLER_CLASS_METHOD_AVAILABLE:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unexpected exception"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 49
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    goto :goto_0

    .line 47
    :catch_2
    move-exception v0

    .line 53
    :goto_0
    nop

    .line 54
    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/spi/PackagingDataCalculator;->cache:Ljava/util/HashMap;

    return-void
.end method

.method private bestEffortLoadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "lastGuaranteedClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;

    .line 222
    invoke-direct {p0, p1, p2}, Lch/qos/logback/classic/spi/PackagingDataCalculator;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 223
    .local v0, "result":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 224
    return-object v0

    .line 226
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 227
    .local v1, "tccl":Ljava/lang/ClassLoader;
    if-eq v1, p1, :cond_1

    .line 228
    invoke-direct {p0, v1, p2}, Lch/qos/logback/classic/spi/PackagingDataCalculator;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 230
    :cond_1
    if-eqz v0, :cond_2

    .line 231
    return-object v0

    .line 235
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 240
    :catch_0
    move-exception v3

    .line 241
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    return-object v2

    .line 238
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 239
    .local v3, "e1":Ljava/lang/NoClassDefFoundError;
    return-object v2

    .line 236
    .end local v3    # "e1":Ljava/lang/NoClassDefFoundError;
    :catch_2
    move-exception v3

    .line 237
    .local v3, "e1":Ljava/lang/ClassNotFoundException;
    return-object v2
.end method

.method private calculateByExactType(Ljava/lang/Class;)Lch/qos/logback/classic/spi/ClassPackagingData;
    .locals 5
    .param p1, "type"    # Ljava/lang/Class;

    .line 117
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lch/qos/logback/classic/spi/PackagingDataCalculator;->cache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/spi/ClassPackagingData;

    .line 119
    .local v1, "cpd":Lch/qos/logback/classic/spi/ClassPackagingData;
    if-eqz v1, :cond_0

    .line 120
    return-object v1

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lch/qos/logback/classic/spi/PackagingDataCalculator;->getImplementationVersion(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lch/qos/logback/classic/spi/PackagingDataCalculator;->getCodeLocation(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "codeLocation":Ljava/lang/String;
    new-instance v4, Lch/qos/logback/classic/spi/ClassPackagingData;

    invoke-direct {v4, v3, v2}, Lch/qos/logback/classic/spi/ClassPackagingData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 125
    iget-object v4, p0, Lch/qos/logback/classic/spi/PackagingDataCalculator;->cache:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-object v1
.end method

.method private computeBySTEP(Lch/qos/logback/classic/spi/StackTraceElementProxy;Ljava/lang/ClassLoader;)Lch/qos/logback/classic/spi/ClassPackagingData;
    .locals 7
    .param p1, "step"    # Lch/qos/logback/classic/spi/StackTraceElementProxy;
    .param p2, "lastExactClassLoader"    # Ljava/lang/ClassLoader;

    .line 130
    iget-object v0, p1, Lch/qos/logback/classic/spi/StackTraceElementProxy;->ste:Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lch/qos/logback/classic/spi/PackagingDataCalculator;->cache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/spi/ClassPackagingData;

    .line 132
    .local v1, "cpd":Lch/qos/logback/classic/spi/ClassPackagingData;
    if-eqz v1, :cond_0

    .line 133
    return-object v1

    .line 135
    :cond_0
    invoke-direct {p0, p2, v0}, Lch/qos/logback/classic/spi/PackagingDataCalculator;->bestEffortLoadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 136
    .local v2, "type":Ljava/lang/Class;
    invoke-virtual {p0, v2}, Lch/qos/logback/classic/spi/PackagingDataCalculator;->getImplementationVersion(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lch/qos/logback/classic/spi/PackagingDataCalculator;->getCodeLocation(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "codeLocation":Ljava/lang/String;
    new-instance v5, Lch/qos/logback/classic/spi/ClassPackagingData;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v3, v6}, Lch/qos/logback/classic/spi/ClassPackagingData;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v5

    .line 139
    iget-object v5, p0, Lch/qos/logback/classic/spi/PackagingDataCalculator;->cache:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-object v1
.end method

.method private getCodeLocation(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p1, "locationStr"    # Ljava/lang/String;
    .param p2, "separator"    # C

    .line 185
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 186
    .local v0, "idx":I
    invoke-direct {p0, v0, p1}, Lch/qos/logback/classic/spi/PackagingDataCalculator;->isFolder(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 188
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 189
    :cond_0
    if-lez v0, :cond_1

    .line 190
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 192
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private isFolder(ILjava/lang/String;)Z
    .locals 2
    .param p1, "idx"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 196
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 201
    return-object v0

    .line 204
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    return-object v0

    .line 207
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 208
    .local v1, "e1":Ljava/lang/NoClassDefFoundError;
    return-object v0

    .line 205
    .end local v1    # "e1":Ljava/lang/NoClassDefFoundError;
    :catch_2
    move-exception v1

    .line 206
    .local v1, "e1":Ljava/lang/ClassNotFoundException;
    return-object v0
.end method


# virtual methods
.method public calculate(Lch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 6
    .param p1, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 57
    :goto_0
    if-eqz p1, :cond_1

    .line 58
    invoke-interface {p1}, Lch/qos/logback/classic/spi/IThrowableProxy;->getStackTraceElementProxyArray()[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/spi/PackagingDataCalculator;->populateFrames([Lch/qos/logback/classic/spi/StackTraceElementProxy;)V

    .line 59
    invoke-interface {p1}, Lch/qos/logback/classic/spi/IThrowableProxy;->getSuppressed()[Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v0

    .line 60
    .local v0, "suppressed":[Lch/qos/logback/classic/spi/IThrowableProxy;
    if-eqz v0, :cond_0

    .line 61
    move-object v1, v0

    .local v1, "arr$":[Lch/qos/logback/classic/spi/IThrowableProxy;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 62
    .local v4, "current":Lch/qos/logback/classic/spi/IThrowableProxy;
    invoke-interface {v4}, Lch/qos/logback/classic/spi/IThrowableProxy;->getStackTraceElementProxyArray()[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    move-result-object v5

    invoke-virtual {p0, v5}, Lch/qos/logback/classic/spi/PackagingDataCalculator;->populateFrames([Lch/qos/logback/classic/spi/StackTraceElementProxy;)V

    .line 61
    .end local v4    # "current":Lch/qos/logback/classic/spi/IThrowableProxy;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 65
    .end local v1    # "arr$":[Lch/qos/logback/classic/spi/IThrowableProxy;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    invoke-interface {p1}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCause()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object p1

    .line 66
    .end local v0    # "suppressed":[Lch/qos/logback/classic/spi/IThrowableProxy;
    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method

.method getCodeLocation(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # Ljava/lang/Class;

    .line 162
    if-eqz p1, :cond_1

    .line 164
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v0

    .line 165
    .local v0, "codeSource":Ljava/security/CodeSource;
    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v1

    .line 167
    .local v1, "resource":Ljava/net/URL;
    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "locationStr":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-direct {p0, v2, v3}, Lch/qos/logback/classic/spi/PackagingDataCalculator;->getCodeLocation(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 172
    return-object v3

    .line 174
    :cond_0
    const/16 v4, 0x5c

    invoke-direct {p0, v2, v4}, Lch/qos/logback/classic/spi/PackagingDataCalculator;->getCodeLocation(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 178
    .end local v0    # "codeSource":Ljava/security/CodeSource;
    .end local v1    # "resource":Ljava/net/URL;
    .end local v2    # "locationStr":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 180
    :cond_1
    nop

    .line 181
    :goto_0
    const-string v0, "na"

    return-object v0
.end method

.method getImplementationVersion(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;

    .line 144
    const-string v0, "na"

    if-nez p1, :cond_0

    .line 145
    return-object v0

    .line 147
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 148
    .local v1, "aPackage":Ljava/lang/Package;
    if-eqz v1, :cond_2

    .line 149
    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "v":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 151
    return-object v0

    .line 153
    :cond_1
    return-object v2

    .line 156
    .end local v2    # "v":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method populateFrames([Lch/qos/logback/classic/spi/StackTraceElementProxy;)V
    .locals 13
    .param p1, "stepArray"    # [Lch/qos/logback/classic/spi/StackTraceElementProxy;

    .line 72
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "local stack reference"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 74
    .local v1, "localteSTEArray":[Ljava/lang/StackTraceElement;
    invoke-static {v1, p1}, Lch/qos/logback/classic/spi/STEUtil;->findNumberOfCommonFrames([Ljava/lang/StackTraceElement;[Lch/qos/logback/classic/spi/StackTraceElementProxy;)I

    move-result v2

    .line 75
    .local v2, "commonFrames":I
    array-length v3, v1

    sub-int/2addr v3, v2

    .line 76
    .local v3, "localFirstCommon":I
    array-length v4, p1

    sub-int/2addr v4, v2

    .line 78
    .local v4, "stepFirstCommon":I
    const/4 v5, 0x0

    .line 79
    .local v5, "lastExactClassLoader":Ljava/lang/ClassLoader;
    const/4 v6, 0x0

    .line 81
    .local v6, "firsExactClassLoader":Ljava/lang/ClassLoader;
    const/4 v7, 0x0

    .line 82
    .local v7, "missfireCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_3

    .line 83
    const/4 v9, 0x0

    .line 84
    .local v9, "callerClass":Ljava/lang/Class;
    sget-boolean v10, Lch/qos/logback/classic/spi/PackagingDataCalculator;->GET_CALLER_CLASS_METHOD_AVAILABLE:Z

    if-eqz v10, :cond_0

    .line 85
    add-int v10, v3, v8

    sub-int/2addr v10, v7

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Lsun/reflect/Reflection;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v9

    .line 87
    :cond_0
    add-int v10, v4, v8

    aget-object v10, p1, v10

    .line 88
    .local v10, "step":Lch/qos/logback/classic/spi/StackTraceElementProxy;
    iget-object v11, v10, Lch/qos/logback/classic/spi/StackTraceElementProxy;->ste:Ljava/lang/StackTraceElement;

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 90
    .local v11, "stepClassname":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 92
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 93
    if-nez v6, :cond_1

    .line 94
    move-object v6, v5

    .line 96
    :cond_1
    invoke-direct {p0, v9}, Lch/qos/logback/classic/spi/PackagingDataCalculator;->calculateByExactType(Ljava/lang/Class;)Lch/qos/logback/classic/spi/ClassPackagingData;

    move-result-object v12

    .line 97
    .local v12, "pi":Lch/qos/logback/classic/spi/ClassPackagingData;
    invoke-virtual {v10, v12}, Lch/qos/logback/classic/spi/StackTraceElementProxy;->setClassPackagingData(Lch/qos/logback/classic/spi/ClassPackagingData;)V

    .line 98
    .end local v12    # "pi":Lch/qos/logback/classic/spi/ClassPackagingData;
    goto :goto_1

    .line 99
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 100
    invoke-direct {p0, v10, v5}, Lch/qos/logback/classic/spi/PackagingDataCalculator;->computeBySTEP(Lch/qos/logback/classic/spi/StackTraceElementProxy;Ljava/lang/ClassLoader;)Lch/qos/logback/classic/spi/ClassPackagingData;

    move-result-object v12

    .line 101
    .restart local v12    # "pi":Lch/qos/logback/classic/spi/ClassPackagingData;
    invoke-virtual {v10, v12}, Lch/qos/logback/classic/spi/StackTraceElementProxy;->setClassPackagingData(Lch/qos/logback/classic/spi/ClassPackagingData;)V

    .line 82
    .end local v9    # "callerClass":Ljava/lang/Class;
    .end local v10    # "step":Lch/qos/logback/classic/spi/StackTraceElementProxy;
    .end local v11    # "stepClassname":Ljava/lang/String;
    .end local v12    # "pi":Lch/qos/logback/classic/spi/ClassPackagingData;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 104
    .end local v8    # "i":I
    :cond_3
    invoke-virtual {p0, v2, p1, v6}, Lch/qos/logback/classic/spi/PackagingDataCalculator;->populateUncommonFrames(I[Lch/qos/logback/classic/spi/StackTraceElementProxy;Ljava/lang/ClassLoader;)V

    .line 105
    return-void
.end method

.method populateUncommonFrames(I[Lch/qos/logback/classic/spi/StackTraceElementProxy;Ljava/lang/ClassLoader;)V
    .locals 4
    .param p1, "commonFrames"    # I
    .param p2, "stepArray"    # [Lch/qos/logback/classic/spi/StackTraceElementProxy;
    .param p3, "firstExactClassLoader"    # Ljava/lang/ClassLoader;

    .line 108
    array-length v0, p2

    sub-int/2addr v0, p1

    .line 109
    .local v0, "uncommonFrames":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 110
    aget-object v2, p2, v1

    .line 111
    .local v2, "step":Lch/qos/logback/classic/spi/StackTraceElementProxy;
    invoke-direct {p0, v2, p3}, Lch/qos/logback/classic/spi/PackagingDataCalculator;->computeBySTEP(Lch/qos/logback/classic/spi/StackTraceElementProxy;Ljava/lang/ClassLoader;)Lch/qos/logback/classic/spi/ClassPackagingData;

    move-result-object v3

    .line 112
    .local v3, "pi":Lch/qos/logback/classic/spi/ClassPackagingData;
    invoke-virtual {v2, v3}, Lch/qos/logback/classic/spi/StackTraceElementProxy;->setClassPackagingData(Lch/qos/logback/classic/spi/ClassPackagingData;)V

    .line 109
    .end local v2    # "step":Lch/qos/logback/classic/spi/StackTraceElementProxy;
    .end local v3    # "pi":Lch/qos/logback/classic/spi/ClassPackagingData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
