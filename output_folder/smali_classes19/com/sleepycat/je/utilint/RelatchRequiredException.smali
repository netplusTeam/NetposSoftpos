.class public Lcom/sleepycat/je/utilint/RelatchRequiredException;
.super Ljava/lang/Exception;
.source "RelatchRequiredException.java"


# static fields
.field public static relatchRequiredException:Lcom/sleepycat/je/utilint/RelatchRequiredException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/sleepycat/je/utilint/RelatchRequiredException;

    invoke-direct {v0}, Lcom/sleepycat/je/utilint/RelatchRequiredException;-><init>()V

    sput-object v0, Lcom/sleepycat/je/utilint/RelatchRequiredException;->relatchRequiredException:Lcom/sleepycat/je/utilint/RelatchRequiredException;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    monitor-enter p0

    .line 31
    monitor-exit p0

    return-object p0
.end method
