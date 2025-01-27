.class public final Lcom/hivemq/client/internal/logging/InternalLoggerFactory;
.super Ljava/lang/Object;
.source "InternalLoggerFactory.java"


# static fields
.field private static final SLF4J_AVAILABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "org.slf4j.Logger"

    invoke-static {v0}, Lcom/hivemq/client/internal/util/ClassUtil;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->SLF4J_AVAILABLE:Z

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/hivemq/client/internal/logging/InternalLogger;"
        }
    .end annotation

    .line 34
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->SLF4J_AVAILABLE:Z

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/hivemq/client/internal/logging/InternalSlf4jLogger;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/logging/InternalSlf4jLogger;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 37
    :cond_0
    sget-object v0, Lcom/hivemq/client/internal/logging/InternalNoopLogger;->INSTANCE:Lcom/hivemq/client/internal/logging/InternalLogger;

    return-object v0
.end method
