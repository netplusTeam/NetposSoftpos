.class public Lorg/jpos/q2/qbean/NameRegistrarInspector;
.super Ljava/lang/Object;
.source "NameRegistrarInspector.java"

# interfaces
.implements Lorg/jpos/q2/qbean/NameRegistrarInspectorMBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public getRegistry()Ljava/util/Map;
    .locals 1

    .line 37
    invoke-static {}, Lorg/jpos/util/NameRegistrar;->getAsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
