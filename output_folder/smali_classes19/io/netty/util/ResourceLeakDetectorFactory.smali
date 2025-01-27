.class public abstract Lio/netty/util/ResourceLeakDetectorFactory;
.super Ljava/lang/Object;
.source "ResourceLeakDetectorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;
    }
.end annotation


# static fields
.field private static volatile factoryInstance:Lio/netty/util/ResourceLeakDetectorFactory;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lio/netty/util/ResourceLeakDetectorFactory;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/ResourceLeakDetectorFactory;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 33
    new-instance v0, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;

    invoke-direct {v0}, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;-><init>()V

    sput-object v0, Lio/netty/util/ResourceLeakDetectorFactory;->factoryInstance:Lio/netty/util/ResourceLeakDetectorFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 30
    sget-object v0, Lio/netty/util/ResourceLeakDetectorFactory;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method public static instance()Lio/netty/util/ResourceLeakDetectorFactory;
    .locals 1

    .line 41
    sget-object v0, Lio/netty/util/ResourceLeakDetectorFactory;->factoryInstance:Lio/netty/util/ResourceLeakDetectorFactory;

    return-object v0
.end method

.method public static setResourceLeakDetectorFactory(Lio/netty/util/ResourceLeakDetectorFactory;)V
    .locals 1
    .param p0, "factory"    # Lio/netty/util/ResourceLeakDetectorFactory;

    .line 52
    const-string v0, "factory"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/ResourceLeakDetectorFactory;

    sput-object v0, Lio/netty/util/ResourceLeakDetectorFactory;->factoryInstance:Lio/netty/util/ResourceLeakDetectorFactory;

    .line 53
    return-void
.end method


# virtual methods
.method public final newResourceLeakDetector(Ljava/lang/Class;)Lio/netty/util/ResourceLeakDetector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/netty/util/ResourceLeakDetector<",
            "TT;>;"
        }
    .end annotation

    .line 63
    .local p1, "resource":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget v0, Lio/netty/util/ResourceLeakDetector;->SAMPLING_INTERVAL:I

    invoke-virtual {p0, p1, v0}, Lio/netty/util/ResourceLeakDetectorFactory;->newResourceLeakDetector(Ljava/lang/Class;I)Lio/netty/util/ResourceLeakDetector;

    move-result-object v0

    return-object v0
.end method

.method public newResourceLeakDetector(Ljava/lang/Class;I)Lio/netty/util/ResourceLeakDetector;
    .locals 3
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

    .line 91
    .local p1, "resource":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget v0, Lio/netty/util/ResourceLeakDetector;->SAMPLING_INTERVAL:I

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/netty/util/ResourceLeakDetectorFactory;->newResourceLeakDetector(Ljava/lang/Class;IJ)Lio/netty/util/ResourceLeakDetector;

    move-result-object v0

    return-object v0
.end method

.method public abstract newResourceLeakDetector(Ljava/lang/Class;IJ)Lio/netty/util/ResourceLeakDetector;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
