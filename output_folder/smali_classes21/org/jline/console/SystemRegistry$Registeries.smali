.class public Lorg/jline/console/SystemRegistry$Registeries;
.super Ljava/lang/Object;
.source "SystemRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/SystemRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Registeries"
.end annotation


# static fields
.field private static final instance:Lorg/jline/console/SystemRegistry$Registeries;


# instance fields
.field private final systemRegisteries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/jline/console/SystemRegistry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Lorg/jline/console/SystemRegistry$Registeries;

    invoke-direct {v0}, Lorg/jline/console/SystemRegistry$Registeries;-><init>()V

    sput-object v0, Lorg/jline/console/SystemRegistry$Registeries;->instance:Lorg/jline/console/SystemRegistry$Registeries;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/console/SystemRegistry$Registeries;->systemRegisteries:Ljava/util/Map;

    .line 168
    return-void
.end method

.method protected static getInstance()Lorg/jline/console/SystemRegistry$Registeries;
    .locals 1

    .line 171
    sget-object v0, Lorg/jline/console/SystemRegistry$Registeries;->instance:Lorg/jline/console/SystemRegistry$Registeries;

    return-object v0
.end method


# virtual methods
.method protected addRegistry(Lorg/jline/console/SystemRegistry;)V
    .locals 3
    .param p1, "systemRegistry"    # Lorg/jline/console/SystemRegistry;

    .line 175
    iget-object v0, p0, Lorg/jline/console/SystemRegistry$Registeries;->systemRegisteries:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method protected getSystemRegistry()Lorg/jline/console/SystemRegistry;
    .locals 3

    .line 179
    iget-object v0, p0, Lorg/jline/console/SystemRegistry$Registeries;->systemRegisteries:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/console/SystemRegistry;

    return-object v0
.end method

.method protected removeRegistry()V
    .locals 3

    .line 183
    iget-object v0, p0, Lorg/jline/console/SystemRegistry$Registeries;->systemRegisteries:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method
