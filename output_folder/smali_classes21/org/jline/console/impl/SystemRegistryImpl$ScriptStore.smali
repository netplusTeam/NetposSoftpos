.class Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;
.super Ljava/lang/Object;
.source "SystemRegistryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/impl/SystemRegistryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScriptStore"
.end annotation


# instance fields
.field engine:Lorg/jline/console/ConsoleEngine;

.field scripts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->scripts:Ljava/util/Map;

    .line 1078
    return-void
.end method

.method public constructor <init>(Lorg/jline/console/ConsoleEngine;)V
    .locals 1
    .param p1, "engine"    # Lorg/jline/console/ConsoleEngine;

    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->scripts:Ljava/util/Map;

    .line 1081
    iput-object p1, p0, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->engine:Lorg/jline/console/ConsoleEngine;

    .line 1082
    return-void
.end method


# virtual methods
.method public getScripts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1099
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->scripts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasScript(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1091
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->scripts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isConsoleScript(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1095
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->scripts:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 1

    .line 1085
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->engine:Lorg/jline/console/ConsoleEngine;

    if-eqz v0, :cond_0

    .line 1086
    invoke-interface {v0}, Lorg/jline/console/ConsoleEngine;->scripts()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ScriptStore;->scripts:Ljava/util/Map;

    .line 1088
    :cond_0
    return-void
.end method
