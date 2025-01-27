.class public Lorg/jpos/util/RealmLogFilter;
.super Ljava/lang/Object;
.source "RealmLogFilter.java"

# interfaces
.implements Lorg/jpos/util/LogListener;
.implements Lorg/jpos/core/XmlConfigurable;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field private disabledRealms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dumpInterval:J

.field private enabledRealms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastDump:J

.field private realmsMissed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/RealmLogFilter;->realmsMissed:Ljava/util/Set;

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/util/RealmLogFilter;->lastDump:J

    return-void
.end method

.method private realmEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "realm"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lorg/jpos/util/RealmLogFilter;->enabledRealms:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/jpos/util/RealmLogFilter;->enabledRealms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/jpos/util/RealmLogFilter;->disabledRealms:Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 119
    iget-object v0, p0, Lorg/jpos/util/RealmLogFilter;->disabledRealms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 120
    :cond_1
    return v1
.end method


# virtual methods
.method public log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    .locals 6
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    .line 88
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getRealm()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "realm":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    move-object v0, v2

    .line 90
    invoke-direct {p0, v0}, Lorg/jpos/util/RealmLogFilter;->realmEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    return-object p1

    .line 93
    :cond_1
    iget-object v2, p0, Lorg/jpos/util/RealmLogFilter;->realmsMissed:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    iget-wide v2, p0, Lorg/jpos/util/RealmLogFilter;->dumpInterval:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/jpos/util/RealmLogFilter;->lastDump:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lorg/jpos/util/RealmLogFilter;->dumpInterval:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 95
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "ignored-realms"

    invoke-direct {v1, v2}, Lorg/jpos/util/LogEvent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    iget-object v2, p0, Lorg/jpos/util/RealmLogFilter;->realmsMissed:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 97
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/jpos/util/RealmLogFilter;->realmsMissed:Ljava/util/Set;

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jpos/util/RealmLogFilter;->lastDump:J

    .line 99
    return-object v1

    .line 101
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    :cond_2
    return-object v1
.end method

.method public setConfiguration(Lorg/jdom2/Element;)V
    .locals 6
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 107
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    .line 108
    .local v0, "enabled":Lorg/jdom2/Element;
    const-string v1, "disabled"

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    .line 109
    .local v1, "disabled":Lorg/jdom2/Element;
    const-string v2, " "

    const-string v3, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jdom2/Element;->getTextNormalize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 110
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getTextNormalize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/jpos/util/RealmLogFilter;->enabledRealms:Ljava/util/Set;

    .line 111
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/jdom2/Element;->getTextNormalize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v1}, Lorg/jdom2/Element;->getTextNormalize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lorg/jpos/util/RealmLogFilter;->disabledRealms:Ljava/util/Set;

    .line 113
    :cond_1
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 125
    const-string v0, "dump-interval"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/util/RealmLogFilter;->dumpInterval:J

    .line 126
    return-void
.end method
