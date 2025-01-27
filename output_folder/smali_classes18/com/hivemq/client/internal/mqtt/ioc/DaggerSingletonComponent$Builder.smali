.class public final Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerSingletonComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    return-void
.end method

.method synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;

    .line 297
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/ioc/SingletonComponent;
    .locals 2

    .line 302
    new-instance v0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;-><init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;)V

    return-object v0
.end method
