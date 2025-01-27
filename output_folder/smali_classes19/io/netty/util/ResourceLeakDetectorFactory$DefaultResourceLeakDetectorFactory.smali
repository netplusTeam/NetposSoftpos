.class final Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;
.super Lio/netty/util/ResourceLeakDetectorFactory;
.source "ResourceLeakDetectorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/ResourceLeakDetectorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultResourceLeakDetectorFactory"
.end annotation


# instance fields
.field private final customClassConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private final obsoleteCustomClassConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .line 101
    invoke-direct {p0}, Lio/netty/util/ResourceLeakDetectorFactory;-><init>()V

    .line 104
    :try_start_0
    const-string v0, "io.netty.customResourceLeakDetector"

    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .local v0, "customLeakDetector":Ljava/lang/String;
    goto :goto_0

    .line 105
    .end local v0    # "customLeakDetector":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 106
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "Could not access System property: io.netty.customResourceLeakDetector"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    const/4 v1, 0x0

    move-object v0, v1

    .line 109
    .local v0, "customLeakDetector":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;->customClassConstructor:Ljava/lang/reflect/Constructor;

    iput-object v1, p0, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;->obsoleteCustomClassConstructor:Ljava/lang/reflect/Constructor;

    goto :goto_1

    .line 112
    :cond_0
    invoke-static {v0}, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;->obsoleteCustomClassConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;->obsoleteCustomClassConstructor:Ljava/lang/reflect/Constructor;

    .line 113
    invoke-static {v0}, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;->customClassConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;->customClassConstructor:Ljava/lang/reflect/Constructor;

    .line 115
    :goto_1
    return-void
.end method

.method private static customClassConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .locals 5
    .param p0, "customLeakDetector"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 136
    nop

    .line 137
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 136
    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 139
    .local v0, "detectorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Class;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    return-object v1

    .line 142
    :cond_0
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "Class {} does not inherit from ResourceLeakDetector."

    invoke-interface {v1, v2, p0}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v0    # "detectorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "Could not load custom resource leak detector class provided: {}"

    invoke-interface {v1, v2, p0, v0}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static obsoleteCustomClassConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .locals 5
    .param p0, "customLeakDetector"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 119
    nop

    .line 120
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 119
    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 122
    .local v0, "detectorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Class;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    return-object v1

    .line 125
    :cond_0
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "Class {} does not inherit from ResourceLeakDetector."

    invoke-interface {v1, v2, p0}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v0    # "detectorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "Could not load custom resource leak detector class provided: {}"

    invoke-interface {v1, v2, p0, v0}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public newResourceLeakDetector(Ljava/lang/Class;I)Lio/netty/util/ResourceLeakDetector;
    .locals 7
    .param p2, "samplingInterval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lio/netty/util/ResourceLeakDetector<",
            "TT;>;"
        }
    .end annotation

    .line 179
    .local p1, "resource":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;->customClassConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 182
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 183
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/ResourceLeakDetector;

    .line 184
    .local v0, "leakDetector":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    const-string v5, "Loaded custom ResourceLeakDetector: {}"

    iget-object v6, p0, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;->customClassConstructor:Ljava/lang/reflect/Constructor;

    .line 185
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 184
    invoke-interface {v4, v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    return-object v0

    .line 187
    .end local v0    # "leakDetector":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    :catchall_0
    move-exception v0

    .line 188
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;->customClassConstructor:Ljava/lang/reflect/Constructor;

    .line 190
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object p1, v5, v1

    aput-object v0, v5, v3

    .line 188
    const-string v1, "Could not load custom resource leak detector provided: {} with the given resource: {}"

    invoke-interface {v4, v1, v5}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Lio/netty/util/ResourceLeakDetector;

    invoke-direct {v0, p1, p2}, Lio/netty/util/ResourceLeakDetector;-><init>(Ljava/lang/Class;I)V

    .line 195
    .local v0, "resourceLeakDetector":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "Loaded default ResourceLeakDetector: {}"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    return-object v0
.end method

.method public newResourceLeakDetector(Ljava/lang/Class;IJ)Lio/netty/util/ResourceLeakDetector;
    .locals 8
    .param p2, "samplingInterval"    # I
    .param p3, "maxActive"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;IJ)",
            "Lio/netty/util/ResourceLeakDetector<",
            "TT;>;"
        }
    .end annotation

    .line 155
    .local p1, "resource":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;->obsoleteCustomClassConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 158
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    .line 160
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    .line 159
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/ResourceLeakDetector;

    .line 161
    .local v0, "leakDetector":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v5

    const-string v6, "Loaded custom ResourceLeakDetector: {}"

    iget-object v7, p0, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;->obsoleteCustomClassConstructor:Ljava/lang/reflect/Constructor;

    .line 162
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 161
    invoke-interface {v5, v6, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    return-object v0

    .line 164
    .end local v0    # "leakDetector":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    :catchall_0
    move-exception v0

    .line 165
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;->obsoleteCustomClassConstructor:Ljava/lang/reflect/Constructor;

    .line 167
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    aput-object p1, v4, v2

    aput-object v0, v4, v1

    .line 165
    const-string v1, "Could not load custom resource leak detector provided: {} with the given resource: {}"

    invoke-interface {v5, v1, v4}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Lio/netty/util/ResourceLeakDetector;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/netty/util/ResourceLeakDetector;-><init>(Ljava/lang/Class;IJ)V

    .line 173
    .local v0, "resourceLeakDetector":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "Loaded default ResourceLeakDetector: {}"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    return-object v0
.end method
