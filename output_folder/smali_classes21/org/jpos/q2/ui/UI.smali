.class public Lorg/jpos/q2/ui/UI;
.super Lorg/jpos/q2/QBeanSupport;
.source "UI.java"

# interfaces
.implements Lorg/jpos/ui/UIObjectFactory;


# instance fields
.field ui:Lorg/jpos/ui/UI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lorg/jpos/q2/ui/UI;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public startService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lorg/jpos/q2/ui/UI;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 38
    .local v0, "config":Lorg/jdom2/Element;
    nop

    .line 39
    const-string v1, "provider"

    const-string v2, "org.jpos.ui.UI"

    invoke-virtual {v0, v1, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jpos/q2/ui/UI;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/ui/UI;

    iput-object v2, p0, Lorg/jpos/q2/ui/UI;->ui:Lorg/jpos/ui/UI;

    .line 41
    invoke-virtual {v2, v0}, Lorg/jpos/ui/UI;->setConfig(Lorg/jdom2/Element;)V

    .line 42
    iget-object v2, p0, Lorg/jpos/q2/ui/UI;->ui:Lorg/jpos/ui/UI;

    invoke-virtual {p0}, Lorg/jpos/q2/ui/UI;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jpos/ui/UI;->setLog(Lorg/jpos/util/Log;)V

    .line 43
    iget-object v2, p0, Lorg/jpos/q2/ui/UI;->ui:Lorg/jpos/ui/UI;

    invoke-virtual {v2, p0}, Lorg/jpos/ui/UI;->setObjectFactory(Lorg/jpos/ui/UIObjectFactory;)V

    .line 44
    iget-object v2, p0, Lorg/jpos/q2/ui/UI;->ui:Lorg/jpos/ui/UI;

    invoke-virtual {v2}, Lorg/jpos/ui/UI;->configure()V

    .line 45
    invoke-virtual {p0}, Lorg/jpos/q2/ui/UI;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/q2/ui/UI;->ui:Lorg/jpos/ui/UI;

    invoke-static {v2, v3}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public stopService()V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/jpos/q2/ui/UI;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lorg/jpos/q2/ui/UI;->ui:Lorg/jpos/ui/UI;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lorg/jpos/ui/UI;->dispose()V

    .line 52
    :cond_0
    return-void
.end method
