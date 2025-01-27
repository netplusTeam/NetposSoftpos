.class public final enum Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;
.super Ljava/lang/Enum;
.source "BuiltinIoServiceFactoryFactories.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedFactory;
.implements Lorg/apache/sshd/common/OptionalFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;",
        ">;",
        "Lorg/apache/sshd/common/NamedFactory<",
        "Lorg/apache/sshd/common/io/IoServiceFactoryFactory;",
        ">;",
        "Lorg/apache/sshd/common/OptionalFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

.field public static final enum MINA:Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

.field public static final enum NETTY:Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

.field public static final enum NIO2:Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final factoryClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/sshd/common/io/IoServiceFactoryFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final factoryClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 35
    new-instance v0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    const-class v1, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactoryFactory;

    const-string v2, "NIO2"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->NIO2:Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    .line 36
    new-instance v1, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    const-string v2, "MINA"

    const/4 v4, 0x1

    const-string v5, "org.apache.sshd.common.io.mina.MinaServiceFactoryFactory"

    invoke-direct {v1, v2, v4, v5}, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->MINA:Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    .line 37
    new-instance v2, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    const-string v5, "NETTY"

    const/4 v6, 0x2

    const-string v7, "org.apache.sshd.netty.NettyIoServiceFactoryFactory"

    invoke-direct {v2, v5, v6, v7}, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->NETTY:Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    .line 34
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    aput-object v0, v5, v3

    aput-object v1, v5, v4

    aput-object v2, v5, v6

    sput-object v5, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->$VALUES:[Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    .line 39
    const-class v0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    .line 40
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->VALUES:Ljava/util/Set;

    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/sshd/common/io/IoServiceFactoryFactory;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/sshd/common/io/IoServiceFactoryFactory;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->factoryClass:Ljava/lang/Class;

    .line 47
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->factoryClassName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "clazz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->factoryClass:Ljava/lang/Class;

    .line 52
    iput-object p3, p0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->factoryClassName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static fromFactoryClass(Ljava/lang/Class;)Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;"
        }
    .end annotation

    .line 113
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    const-class v1, Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->VALUES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    .line 118
    .local v2, "f":Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;
    invoke-virtual {v2}, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->isSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {v2}, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->getFactoryClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    return-object v2

    .line 125
    .end local v2    # "f":Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;
    :cond_2
    goto :goto_0

    .line 127
    :cond_3
    return-object v0

    .line 114
    :cond_4
    :goto_1
    return-object v0
.end method

.method public static fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 109
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    sget-object v1, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->VALUES:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;
    .locals 1

    .line 34
    sget-object v0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->$VALUES:[Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->create()Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    move-result-object v0

    return-object v0
.end method

.method public final create()Lorg/apache/sshd/common/io/IoServiceFactoryFactory;
    .locals 3

    .line 87
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->getFactoryClass()Ljava/lang/Class;

    move-result-object v0

    .line 89
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/sshd/common/io/IoServiceFactoryFactory;>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/io/IoServiceFactoryFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 90
    :catchall_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 92
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 94
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final getFactoryClass()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/sshd/common/io/IoServiceFactoryFactory;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->factoryClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 66
    return-object v0

    .line 70
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->factoryClassName:Ljava/lang/String;

    const-class v2, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 71
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_1
    iget-object v2, p0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->factoryClassName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v0, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 74
    :catch_1
    move-exception v0

    .line 75
    .local v0, "e1":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final getFactoryClassName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->factoryClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->factoryClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupported()Z
    .locals 2

    .line 102
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->getFactoryClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/RuntimeException;
    return v0
.end method
